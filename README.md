# FPGA Spring 2026 Final Project

For this project, I have chosen to develop and design a real-time calorimeter trigger pipeline system that processes streaming detector energy deposits and produces physics trigger objects. 

## Phase 1 - Reference Model

The first step was to build a solid trigger pipeline using basic C++ programming. First, the model takes in a full input array of energies, clustered everything using normal array access, stored all of the clusters and sorted them, and then built basic trigger objects.

### Design Parameters

- Calorimeter grid: 30 eta bins x 60 phi bins
- Tower ET width: 12-bit unsigned integer
- Cluster ET width: 20-bit unsigned integer
- HT width: 24-bit unsigned integer
- Top-N output: 8 trigger objects
- EM clustering: 3x3 core, 5x5 isolation, 7x7 compactness check
- Jet clustering: 7x7 total energy with broadness requirement
- Target FPGA part: xcvu13p-fsga2577-2-e
- Target clock period: 25 ns

The input was a full calorimeter grid `tower_et_t towers[NETA][NPHI]`, and each tower stored a 12-bit integer transverse energy (ET). The basic steps of the input are as follows:

1. Build array
2. Find clusters
3. Select top N Clusters
4. Build trigger objects
5. Read out trigger objects and compute HT

The first thing I built was the clustering function,

```
template<int cluster_W, int iso_W>
void find_clusters(...)
```
I chose to use a lot of templates while building this because there are many instances where the same code is needed but with slightly different sizes - for example, this one function would be called as
```
find_clusters<3, 5>(...);
find_clusters<5, 7>(...);
find_clusters<7, 7>(...);
```
To get a 3x3 cluster with 5x5 isolation, a 5x5 cluster with 7x7 isolation, or a 7x7 cluster with no isolation respectively. I built helper functions with similar goals:

- window_sum<W>: sum a W x W square around a tower to get cluster energy
- is_local_maximum<W>: check whether center tower in W x W cluster is largest
- isolation_sum<inner_W, outer_W>: Compute isolation from outer window minus inner window cluster. So a 3x3 cluster with 5x5 isolation would have an isolation sum of the (5x5) - (3x3) sum.
- select_top_n: function to select the top-N (I set it to 8) clusters in order of highest energy. Also contains another function, `insert_cluster_into_top_n`, to help aid in this.
- compute_ht: summed over the entire towers to find the total energy

I also had a function `make_trigger_objects`, which took in the Cluster structures and checked to see if they fit the specification of an EM or Jet object. For now, I just set it to only look at the window size of the cluster, 3x3 being EM, and otherwise being Jet.

I then set up a reference path function, `run_reference_trigger_3x3_iso5()`, which connected the cluster selection, top N selection, ht computation, and building the trigger objects. This created a solid baseline for the rest of the project that I was able to expand upon and reuse significantly.

Running through this code with HLS, I got the following specifications:

|  LUT   |   FF |    DSP |   BRAM | Estimated clock period | Latency (Max) |
| -----: | ---: | -----: | -----: | ---------------------: | ------------: | 
|  4027  | 1009 |   0    |    11  |      9.750 ns          |   3.309 ms    |

Not too bad, but also pretty expected especially on the high latency. Adding pragmas should reduce the latency and improve the clock period.


## Phase 2 - Adding Pragmas to the model

The next step involved taking the same algorithm and functions but adding pragmas. I implemented the following pragmas:

- UNROLL: Used on small-sized loops with known, fixed iterations.

- INLINE: Used for most of the small functions. I separated a lot of things for the sake of organization, so INLINE fixed any scheduling issues that may have caused.

- PIPELINE II=1: The main eta/phi scan loops were pipelined, to try and process one candidate per cycle if allowed.

- ARRAY_PARTITION: small arrays, like the Top-N Trigger Objects (only 8), were partitioned fully for maximum parallelism.

- INTERFACE: for the towers array I used the bram interface to treat it like memory, and the rest of the thresholds, HT, and counts were treated as AXI-lite control/status ports.

I also tried to do a little bit of optimization for HLS outside of just adding pragmas, including trying to make loops closed to allow better latency estimations. I think there are more opportunities to include pragmas and streamline this code further, but these are the ones I'm comfortable with applying and, judging by the specifications below, it was a successful implementation.

Running through this code with HLS, I got the following specifications:

|  LUT   |   FF |    DSP |   BRAM | Estimated clock period | Latency (Max) |
| -----: | ---: | -----: | -----: | ---------------------: | ------------: | 
|  6158  | 1814 |   0    |    9  |      6.255 ns          |   1.182 ms    |

While there was more resource usage (expected due to the parallelization), the clock period and latency both decreased by a third. I'm not sure what the needed clock period for a real trigger system would be, but I think there are more opportunities for optimization to be explored.

## Phase 3 - Internal Streaming, still with Arrays

Once the pragmas had been built in, I wanted to transition away from the array-based input and move to a streaming setup. But, that would take some more work, so this step became an intermediary phase focused on building the internal streaming setup without the full front-end read-in. Mainly, I replaced the `clusters[MAX_CLUSTERS]` array with `hls::stream<Cluster>`, and the cluster producer streamed candidates directly to the top-N selector. The pipeline changed to something closer to:

1. Take in 30x60 tower array
2. Produce cluster stream
3. Select top N clusters from stream
4. Build trigger objects
5. Output trigger objects and info

Previously, the intermediate Cluster identification was stored in the intermediate array `clusters[MAX_CLUSTERS]`, but using streaming can avoid this intermediate array entirely. The cluster producer could write one Cluster item per scanned position in the stream. I ended up making a lot of similar versions of the same functions, this time just with using the Cluster streaming, for example:

- produce_cluster_stream_3x3_iso5(...)
- find_clusters_stream<3,5>(...)
- select_top_n_from_stream_fixed<NUM_CANDIDATES>(...)

Which do the same jobs as the previous functions, just now accounting for how the clusters are read in. These were all put together into a function, `cluster_sort_build_stream(...)`, and this is where I used the DATAFLOW Pragma to start pipelining larger tasks together, such as computing the HT (HT was kept out of the dataflow region since they were both reading out from the same tower array).


Running through this code with HLS, I got the following specifications:

|  LUT   |   FF |    DSP |   BRAM | Estimated clock period | Latency (Max) |
| -----: | ---: | -----: | -----: | ---------------------: | ------------: | 
|  867  | 474 |   0    |    0  |      2.478 ns          |   0    |


The latency appeared to be 0 in this version, which is probably not real but some result of the streaming addition. Either way, it seems removing the intermediate array reduces the resource usage significantly.

## Phase 4 - Adding separate EM and jet clustering

Before fully moving to tower streaming for input, I wanted to focus a little more on the clustering, isolation, and trigger object identification. Previously to this point, I had no separation for trigger objects and was just treating every object like a 3x3 EM cluster. There is more I could have done to separate these objects or include more distinct, but I still kept it simple and had a trigger object be classified either as an EM Object (electron/photon) or Jet object. 

- EM objects are compact and isolated in a 3x3 cluster
- Jet objects are broad 7x7-like objects

I found the best way to do this was to create two separate but parallel producers, one looking for EM candidates and one looking for Jet candidates.

I fleshed out the shape-based separation more. I used a `core3_et`, `sum5_et`, and `sum7_et` to represent the energy of each window/cluster. Then, computed the `iso5_et = sum5_et - core3_et` (5x5 isolation) and `ring7_et = sum7_et - core3_et` (7x7 isolation). The EM Candidate had to satisfy being above the core3_et threshold, a small iso5_et & ring7_et compared to the core3_et. The jet candidate needed to satisfy a sum7_et above threshold, and a significant ring7_et compared to core3_et. To do this, I created to helper functions, `is_em_like` and `is_jet_like`, that worked through these calculations and returned a value assigning which one the cluster seemed more like. (Note: the integer ratio cuts needed in these two functions had to be written using cross-multiplication instead of division, as division is no good logic on FPGAs). I connected the two separate dataflows with `cluster_sort_build_em_jet_stream(...)` and the top function `calo_trigger_em_jet_stream_ref(...)`.

Running through this code with HLS, I got the following specifications:

|  LUT   |   FF |    DSP |   BRAM | Estimated clock period | Latency (Max) |
| -----: | ---: | -----: | -----: | ---------------------: | ------------: | 
|  18912  | 8738 |   0    |    0  |      7.274 ns         |    1.809 ms    |

Requiring to run two parallel streams seems to cause a significant increase in resource utilization.

## Phase 5 - Full Tower Streaming

Lastly, I replaced the 30x60 input array with `hls::stream<tower_et_t>`, using line buffers and 7x7 sliding windows for read-in. I tried to rewrite as little of my other code as possible and kept most candidate-construction, sorting, and object identification the same. The initial input `tower_et_t towers[NETA][NPHI]` became `hls::stream<tower_et_t> &tower_in`, and I made a new top function `calo_trigger_tower_stream_ref(...)`. The basic steps became:

1. Get tower stream in
2. 7-row circular line buffer
3. 7x7 local window
4. Make EM, jet candidates from the window
5. Cluster stream the EM and Jets
6. Sort top N
7. Build objects

Once enough rows are read, a local 7x7 window is built around a center position. For each center position, the code fills this window from the line buffer. The phi coordinate was treated periodically, a `wrap_phi` helper was built to do this in any instance where coordinates were needed. The eta direction was not wrapped, and valid windows are only produced once enough eta rows are read in. Once the tower stream was read in, HT was computed, the circular line buffer was filled, local windows were built, and the previous helpers were repurposed to make candidates and write their streams.


Running through this code with HLS, I got the following specifications:

|  LUT   |   FF |    DSP |   BRAM | Estimated clock period | Latency (Max) |
| -----: | ---: | -----: | -----: | ---------------------: | ------------: | 
|  18708  | 7811 |   0    |    0  |      12.510 ns        |    0.432 ms    |


## Verification

The testbench I wrote constructed a simple calorimeter event with several EM-like deposits, a broader jet-like deposit, sub-threshold towers, and a case where one candidate failed the local-maximum requirement. The expected outputs checked included HT, the number of EM and jet clusters, sorted trigger-object ET values, eta/phi positions, window size, isolation/ring energy, and trigger type. All tests were passed in each iteration presented in the report.

### Summary of HLS Results

| Phase | Design style | LUT | FF | DSP | BRAM | Clock period | Max latency |
|---|---|---:|---:|---:|---:|---:|---:|
| 1 | Array reference | 4027 | 1009 | 0 | 11 | 9.750 ns | 3.309 ms |
| 2 | Pragmas | 6158 | 1814 | 0 | 9 | 6.255 ns | 1.182 ms |
| 3 | Internal streaming | 867 | 474 | 0 | 0 | 2.478 ns | reported 0 |
| 4 | EM/jet streaming | 18912 | 8738 | 0 | 0 | 7.274 ns | 1.809 ms |
| 5 | True tower streaming | 18708 | 7811 | 0 | 0 | 12.510 ns | 0.432 ms |

The addition of pragmas increased resources but improved timing, the EM/jet doubled the candidate logic which is shown by the increased resources, and the full tower-streaming improved latency the best at the cost of clock-period (probably due to the line-buffer and window logic).

## Final Remarks

There are still several ways to continue this project: the calorimeter is not separated into an ECAL or HCAL, the object identification is simple, and my testbench cases are limited in scope - there may be bugs or unique instances that are not yet accounted for. I found this project to be very illuminating and useful in solidifying my knowledge from the course. Having started work this year with the actual CMS Trigger system, getting the chance to dive in and look at how a system has to be built was personally useful and academically satisfying.

