#ifndef CALORIMETER_H
#define CALORIMETER_H

#include <ap_int.h>
#include <hls_stream.h>


// Detector geometry

#define NETA 30
#define NPHI 60
#define MAX_CLUSTERS (NETA * NPHI)

#define TOP_N 8

// EM cluster window and isolation sizes for reference implementation
#define EM_CLUSTER_W 3
#define EM_ISO_W 5
#define EM_SHAPE_W 7
#define EM_SCAN_RADIUS (EM_SHAPE_W / 2)
#define EM_SCAN_CELLS ((NETA - 2 * EM_SCAN_RADIUS) * NPHI)

// Jet cluster window and isolation sizes for reference implementation
#define JET_CLUSTER_W 7
#define JET_ISO_W 7
#define JET_SCAN_RADIUS (JET_ISO_W / 2)
#define JET_SCAN_CELLS ((NETA - 2 * JET_SCAN_RADIUS) * NPHI)


// Old names for EM-only streaming implementation (ignore)
#define CLUSTER_W_STREAM EM_CLUSTER_W
#define ISO_W_STREAM EM_ISO_W
#define STREAM_SCAN_RADIUS (ISO_W_STREAM / 2)
#define STREAM_SCAN_CELLS ((NETA - 2 * STREAM_SCAN_RADIUS) * NPHI)

// Shape cuts. EM requires smaller clusters and less isolation energy, while jets can be larger and less isolated.
#define EM_ISO_DEN 6 // Denominator for EM isolation cut (isolation_et < cluster_et / EM_ISO_DEN)
#define EM_RING_DEN 6 // Denominator for EM ring cut (ring_et < cluster_et / EM_RING_DEN)
#define JET_RING_DEN 6 // Denominator for jet ring cut (ring_et < cluster_et / JET_RING_DEN)    
// Data types

//Each tower's transverse energy (ET) is represented as a 12-bit unsigned integer
typedef ap_uint<12> tower_et_t; 


// Each cluster's transverse energy (ET) is represented as a 20-bit unsigned integer
typedef ap_uint<20> cluster_et_t;


// Wider shape for ring energy calculation to avoid overflow
typedef ap_uint<28> shape_calc_t;

// total HT is represented as a 24-bit unsigned integer
typedef ap_uint<24> ht_t;

// Cluster structure


struct Cluster {
    cluster_et_t et; // Transverse energy of the cluster
    cluster_et_t isolation_et; // Isolation transverse energy
    ap_uint<6> eta; // Eta coordinate of the cluster
    ap_uint<6> phi; // Phi coordinate of the cluster
    ap_uint<4> window_size; // Size of the cluster window
    ap_uint<4> iso_outer_size; // Size of the isolation outer window
    bool valid; // Validity flag
};


//Trigger object setup
enum TriggerType {
    TRIG_NONE = 0,
    TRIG_EM = 1,
    TRIG_JET = 2
};

struct TriggerObject {
    cluster_et_t et;
    cluster_et_t isolation_et;
    ap_uint<6> eta;
    ap_uint<6> phi;
    ap_uint<4> window_size;
    TriggerType type;
    bool valid;
};

//Top function (no stream)
void calo_trigger_ref(const tower_et_t grid[NETA][NPHI],
                      tower_et_t seed_threshold,
                      cluster_et_t cluster_threshold,
                      TriggerObject objects[TOP_N],
                      ht_t *ht,
                      int *num_clusters);

// Function prototypes

void find_clusters_3x3(const tower_et_t towers[NETA][NPHI],
                    tower_et_t seed_threshold,
                    cluster_et_t cluster_threshold,
                    Cluster clusters[MAX_CLUSTERS],
                    int &num_clusters);

void find_clusters_3x3_iso5(const tower_et_t towers[NETA][NPHI],
                           tower_et_t seed_threshold,
                           cluster_et_t cluster_threshold,
                           Cluster clusters[MAX_CLUSTERS],
                           int &num_clusters);

void find_clusters_3x3_iso7(const tower_et_t towers[NETA][NPHI],
                           tower_et_t seed_threshold,
                           cluster_et_t cluster_threshold,
                           Cluster clusters[MAX_CLUSTERS],
                           int &num_clusters);

void find_clusters_5x5(const tower_et_t towers[NETA][NPHI],
                    tower_et_t seed_threshold,
                    cluster_et_t cluster_threshold,
                    Cluster clusters[MAX_CLUSTERS],
                    int &num_clusters);

void find_clusters_5x5_iso7(const tower_et_t towers[NETA][NPHI],
                           tower_et_t seed_threshold,
                           cluster_et_t cluster_threshold,
                           Cluster clusters[MAX_CLUSTERS],
                           int &num_clusters);

void find_clusters_7x7(const tower_et_t towers[NETA][NPHI],
                    tower_et_t seed_threshold,
                    cluster_et_t cluster_threshold,
                    Cluster clusters[MAX_CLUSTERS],
                    int &num_clusters);



void select_top_n(const Cluster clusters[MAX_CLUSTERS], 
                  int num_clusters, 
                  Cluster top_clusters[TOP_N]);

void insert_cluster_into_top_n(const Cluster &candidate,
                               Cluster top_clusters[TOP_N]);

ht_t compute_ht(const tower_et_t towers[NETA][NPHI]);

void build_trigger_objects(const Cluster top_clusters[TOP_N], 
                          TriggerObject trigger_objects[TOP_N]);

void run_reference_trigger_3x3_iso5(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            Cluster clusters[MAX_CLUSTERS],
                            int &num_clusters,
                            Cluster top_clusters[TOP_N],
                            TriggerObject trigger_objects[TOP_N],
                            ht_t &ht);



inline int wrap_phi(int phi) {
#pragma HLS INLINE
    if (phi < 0) {
        return phi + NPHI;
    } else if (phi >= NPHI) {
        return phi - NPHI;
    }
    return phi;
}


/// Build a template to allow for easy switching between different cluster finding algorithms
template<int W>
cluster_et_t window_sum(const tower_et_t towers[NETA][NPHI], int eta, int phi) {
#pragma HLS INLINE

    cluster_et_t sum = 0;
    int half_W = W / 2;
    WIN_ETA: for (int i = 0; i < W; ++i) {
#pragma HLS UNROLL
        WIN_PHI: for (int j = 0; j < W; ++j) {
#pragma HLS UNROLL
            int d_eta = i - half_W;
            int d_phi = j - half_W;

            int eta_idx = eta + d_eta;
            int phi_idx = wrap_phi(phi + d_phi);

            if (eta_idx >= 0 && eta_idx < NETA) {
                sum += (cluster_et_t)towers[eta_idx][phi_idx];
            }
        }
    }
    return sum;
}


// Check if center of window is a local maximum
template<int W>
bool is_local_maximum(const tower_et_t towers[NETA][NPHI], int eta, int phi) {
#pragma HLS INLINE
    tower_et_t center_et = towers[eta][phi];
    int half_W = W / 2;
    bool is_max = true;

    LOCAL_ETA: for (int i = 0; i < W; ++i) {
#pragma HLS UNROLL
        LOCAL_PHI: for (int j = 0; j < W; ++j) {
#pragma HLS UNROLL

            int d_eta = i - half_W;
            int d_phi = j - half_W;

            if (!(d_eta == 0 && d_phi == 0)) {
                int eta_idx = eta + d_eta;
                int phi_idx = wrap_phi(phi + d_phi);

    
                tower_et_t neighbor = towers[eta_idx][phi_idx];

                if (neighbor > center_et) {
                    is_max = false;
                } else if (neighbor == center_et) {
                    if (d_eta < 0 || (d_eta == 0 && d_phi < 0)) {
                        is_max = false;
                        }
                    }
                }
            }
        }
    return is_max;
}

// Now to get isolation energery we can use the same window sum function but with a larger window and subtract the cluster energy
// For example, for a 5x5 isolation window around a 3x3 cluster, we can do:
// isolation_et = window_sum<5>(towers, eta, phi) - window_sum<3>(towers, eta, phi);
// But let's generalize a template for ease of use later

template<int inner_W, int outer_W>
cluster_et_t isolation_sum(const tower_et_t towers[NETA][NPHI], int eta, int phi) {
#pragma HLS INLINE
    return window_sum<outer_W>(towers, eta, phi) - window_sum<inner_W>(towers, eta, phi);
}

inline bool is_em_like(cluster_et_t core3_et, cluster_et_t iso5_et, cluster_et_t ring7_et) {
#pragma HLS INLINE
    // Isolated in 5x5:
    // EM_ISO_DEN = 6 means that iso5_et must be less than core3_et / 6
    // EM_ISO_DEN * iso5 < core3_et
    shape_calc_t iso_lhs = (shape_calc_t) EM_ISO_DEN * iso5_et;
    shape_calc_t iso_rhs = (shape_calc_t) core3_et;

    if (iso_lhs >= iso_rhs) {
        return false;
    }

    // Compact in 7x7:
    // EM_RING_DEN = 6 means that ring7_et must be less than core3_et / 6
    // EM_RING_DEN * ring7_et < core3_et
    shape_calc_t ring_lhs = (shape_calc_t) EM_RING_DEN * ring7_et;
    shape_calc_t ring_rhs = (shape_calc_t) core3_et;

    if (ring_lhs >= ring_rhs) {
        return false;
    }

    return true;
}


inline bool is_jet_like(cluster_et_t core3_et, cluster_et_t sum7_et) {
#pragma HLS INLINE
    cluster_et_t ring7_et = sum7_et - core3_et;

    //Broadness:
    // JET_RING_DEN * ring7 > core3_et
    shape_calc_t ring_lhs = (shape_calc_t) JET_RING_DEN * ring7_et;
    shape_calc_t ring_rhs = (shape_calc_t) core3_et;    

    if (ring_lhs <= ring_rhs) {
        return false;
    }   
    return true;
}

// Now we need to implement the main cluster finding function using these templates.
// We want to find the cluster using a given size, and the isolation size.
// If no isolation desired, we can set the isolation size to be the same as the cluster size, which will result in zero isolation energy.
template<int cluster_W, int iso_W>
void find_clusters(const tower_et_t towers[NETA][NPHI],
                    tower_et_t seed_threshold,
                    cluster_et_t cluster_threshold,
                    Cluster clusters[MAX_CLUSTERS],
                    int &num_clusters) {
    num_clusters = 0;

    const int CLUSTER_HALF_W = cluster_W / 2;
    const int ISO_HALF_W = iso_W / 2;

    const int HALF_W = (cluster_W > iso_W) ? (cluster_W / 2) : (iso_W / 2);
    //Ignore boundary cells for right now. 
    FIND_ETA: for (int eta = HALF_W; eta < NETA - HALF_W; eta++) {
        FIND_PHI: for (int phi = 0; phi < NPHI; phi++) {
    #pragma HLS PIPELINE II=1
            tower_et_t seed_et = towers[eta][phi];

            if (seed_et < seed_threshold) {
                continue; // Not a seed
            }

            if (!is_local_maximum<cluster_W>(towers, eta, phi)) {
                continue; // Not a local maximum
            }

            // Calculate cluster energy
            cluster_et_t cluster_et = window_sum<cluster_W>(towers, eta, phi);

            if (cluster_et < cluster_threshold) {
                continue; // Cluster energy below threshold
            }

            // Calculate isolation energy

            cluster_et_t isolation_et = isolation_sum<cluster_W, iso_W>(towers, eta, phi);

            // Store cluster information
            if (num_clusters < MAX_CLUSTERS) {
                clusters[num_clusters].et = cluster_et;
                clusters[num_clusters].isolation_et = isolation_et;
                clusters[num_clusters].eta = eta;
                clusters[num_clusters].phi = phi;
                clusters[num_clusters].window_size = cluster_W;
                clusters[num_clusters].iso_outer_size = iso_W;
                clusters[num_clusters].valid = true;
                num_clusters++;
            }
        }
    }
}


template<int cluster_W, int iso_W>
void find_clusters_stream(const tower_et_t towers[NETA][NPHI],
                    tower_et_t seed_threshold,
                    cluster_et_t cluster_threshold,
                    hls::stream<Cluster> &cluster_stream) {

    const int HALF_W = (cluster_W > iso_W) ? (cluster_W / 2) : (iso_W / 2);

    for (int eta = HALF_W; eta < NETA - HALF_W; eta++) {
        for (int phi = 0; phi < NPHI; phi++) {
    #pragma HLS PIPELINE II=1
            
            Cluster candidate;
            candidate.et = 0;
            candidate.isolation_et = 0;
            candidate.eta = eta;
            candidate.phi = phi;
            candidate.window_size = cluster_W;
            candidate.iso_outer_size = iso_W;
            candidate.valid = false;    

            tower_et_t seed_et = towers[eta][phi];

            if (seed_et >= seed_threshold && is_local_maximum<cluster_W>(towers, eta, phi)) {
                // Calculate cluster energy
                cluster_et_t cluster_et = window_sum<cluster_W>(towers, eta, phi);

                if (cluster_et >= cluster_threshold) {
                    // Calculate isolation energy
                    candidate.et = cluster_et;
                    candidate.isolation_et = isolation_sum<cluster_W, iso_W>(towers, eta, phi);
                    candidate.valid = true;
                }
            }
            cluster_stream.write(candidate);
        }
    }
}

////////////////////////////////////////////////

// STREAMING IMPLEMENTATIONS

////////////////////////////////////////////////


//Top function (streaming)
void calo_trigger_stream_ref(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            TriggerObject trigger_objects[TOP_N],
                            ht_t *ht,
                            int *num_clusters);

void calo_trigger_em_jet_stream_ref(const tower_et_t towers[NETA][NPHI],
                                    tower_et_t em_seed_threshold,
                                    cluster_et_t em_cluster_threshold,
                                    tower_et_t jet_seed_threshold,
                                    cluster_et_t jet_cluster_threshold,
                                    TriggerObject em_objects[TOP_N],
                                    TriggerObject jet_objects[TOP_N],
                                    ht_t *ht,
                                    int *num_em_clusters,
                                    int *num_jet_clusters);

void produce_cluster_stream_3x3_iso5(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            hls::stream<Cluster> &cluster_stream);

void produce_cluster_stream_7x7(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            hls::stream<Cluster> &cluster_stream);


void produce_em_cluster_stream(const tower_et_t towers[NETA][NPHI],
                               tower_et_t seed_threshold,
                               cluster_et_t cluster_threshold,
                               hls::stream<Cluster> &cluster_stream);

void produce_jet_cluster_stream(const tower_et_t towers[NETA][NPHI],
                                tower_et_t seed_threshold,
                                cluster_et_t cluster_threshold,
                                hls::stream<Cluster> &cluster_stream);


void cluster_sort_build_stream(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            TriggerObject trigger_objects[TOP_N],
                            int *num_clusters);

void cluster_sort_build_em_jet_stream(const tower_et_t towers[NETA][NPHI],
                                      tower_et_t em_seed_threshold,
                                      cluster_et_t em_cluster_threshold,
                                      tower_et_t jet_seed_threshold,
                                      cluster_et_t jet_cluster_threshold,
                                      TriggerObject em_objects[TOP_N],
                                      TriggerObject jet_objects[TOP_N],
                                      int *num_em_clusters,
                                      int *num_jet_clusters);








template<int NUM_CANDIDATES>
void select_top_n_from_stream_fixed(hls::stream<Cluster> &cluster_stream,
                            Cluster top_clusters[TOP_N],
                            int *num_clusters) {
#pragma HLS ARRAY_PARTITION variable=top_clusters complete dim=1
    int local_num_clusters = 0;

    for (int i = 0; i < TOP_N; i++) {
#pragma HLS UNROLL
        top_clusters[i].et = 0;
        top_clusters[i].isolation_et = 0;
        top_clusters[i].eta = 0;
        top_clusters[i].phi = 0;
        top_clusters[i].window_size = 0;
        top_clusters[i].iso_outer_size = 0;
        top_clusters[i].valid = false;
    }

    for (int i = 0; i < NUM_CANDIDATES; i++){
#pragma HLS PIPELINE II=1
        Cluster candidate = cluster_stream.read();

        if (!candidate.valid) {
            continue;
        }

        local_num_clusters++;
        insert_cluster_into_top_n(candidate, top_clusters);
    }

    *num_clusters = local_num_clusters;
}


#endif // CALORIMETER_H
