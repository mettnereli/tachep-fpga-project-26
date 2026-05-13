#include "calorimeter.h"


void run_reference_trigger_3x3_iso5(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            Cluster clusters[MAX_CLUSTERS],
                            int &num_clusters,
                            Cluster top_clusters[TOP_N],
                            TriggerObject trigger_objects[TOP_N],
                            ht_t &ht) {
    find_clusters_3x3_iso5(towers, seed_threshold, cluster_threshold, clusters, num_clusters);
    select_top_n(clusters, num_clusters, top_clusters);
    build_trigger_objects(top_clusters, trigger_objects);
    ht = compute_ht(towers);
}

void find_clusters_3x3(const tower_et_t towers[NETA][NPHI],
                    tower_et_t seed_threshold,
                    cluster_et_t cluster_threshold,
                    Cluster clusters[MAX_CLUSTERS],
                    int &num_clusters) {
    find_clusters<3, 3>(towers, seed_threshold, cluster_threshold, clusters, num_clusters);
}

void find_clusters_3x3_iso5(const tower_et_t towers[NETA][NPHI],
                           tower_et_t seed_threshold,
                           cluster_et_t cluster_threshold,
                           Cluster clusters[MAX_CLUSTERS],
                           int &num_clusters) {
    find_clusters<3, 5>(towers, seed_threshold, cluster_threshold, clusters, num_clusters);
}


void find_clusters_3x3_iso7(const tower_et_t towers[NETA][NPHI],
                           tower_et_t seed_threshold,
                           cluster_et_t cluster_threshold,
                           Cluster clusters[MAX_CLUSTERS],
                           int &num_clusters) {
    find_clusters<3, 7>(towers, seed_threshold, cluster_threshold, clusters, num_clusters);
}

void find_clusters_5x5(const tower_et_t towers[NETA][NPHI],
                    tower_et_t seed_threshold,
                    cluster_et_t cluster_threshold,
                    Cluster clusters[MAX_CLUSTERS],
                    int &num_clusters) {
    find_clusters<5, 5>(towers, seed_threshold, cluster_threshold, clusters, num_clusters);
}

void find_clusters_5x5_iso7(const tower_et_t towers[NETA][NPHI],
                           tower_et_t seed_threshold,
                           cluster_et_t cluster_threshold,
                           Cluster clusters[MAX_CLUSTERS],
                           int &num_clusters) {
    find_clusters<5, 7>(towers, seed_threshold, cluster_threshold, clusters, num_clusters);
}

void find_clusters_7x7(const tower_et_t towers[NETA][NPHI],
                    tower_et_t seed_threshold,
                    cluster_et_t cluster_threshold,
                    Cluster clusters[MAX_CLUSTERS],
                    int &num_clusters) {
    find_clusters<7, 7>(towers, seed_threshold, cluster_threshold, clusters, num_clusters);
}


bool cluster_is_better(const Cluster &a, const Cluster &b)
{
#pragma HLS INLINE
    if (!a.valid) {
        return false;
    }

    if (!b.valid) {
        return true;
    }

    if (a.et > b.et) {
        return true;
    }

    if (a.et < b.et) {
        return false;
    }

    if (a.eta < b.eta) {
        return true;
    }

    if (a.eta > b.eta) {
        return false;
    }

    if (a.phi < b.phi) {
        return true;
    }

    return false;
}

void insert_cluster_into_top_n(const Cluster &candidate,
                               Cluster top_clusters[TOP_N]) {
#pragma HLS INLINE

    if (!candidate.valid) {
        return;
    }

    INSERT_POSITION: for (int j = 0; j < TOP_N; j++) {
        if (!top_clusters[j].valid || cluster_is_better(candidate, top_clusters[j])) {
            // Shift down lower-ranked clusters
            for (int k = TOP_N - 1; k > j; k--) {
                top_clusters[k] = top_clusters[k - 1];
            }
            top_clusters[j] = candidate;
            break;
        }
    }

}


// Sort by ET and select top N clusters.
// If ET is equal, smaller eta first
// IF eta is equal, smaller phi first
void select_top_n(const Cluster clusters[MAX_CLUSTERS], 
                  int num_clusters, 
                  Cluster top_clusters[TOP_N]) {
#pragma HLS ARRAY_PARTITION variable=top_clusters complete dim=1
    // Simple selection sort for top N clusters
    clear_top_clusters(top_clusters);

    FIND_CLUSTER: for (int i = 0; i < MAX_CLUSTERS; ++i) {
#pragma HLS PIPELINE II=1
	if (i >= num_clusters) continue;
    if (!clusters[i].valid) continue;

    insert_cluster_into_top_n(clusters[i], top_clusters);
    }
}

ht_t compute_ht(const tower_et_t towers[NETA][NPHI]) {
    ht_t ht = 0;
    HT_ETA: for (int eta = 0; eta < NETA; eta++) {
        HT_PHI: for (int phi = 0; phi < NPHI; phi++) {
#pragma HLS PIPELINE II=1
            ht += (ht_t) towers[eta][phi];
        }
    }
    return ht;
}


void build_trigger_objects(const Cluster top_clusters[TOP_N], 
                          TriggerObject trigger_objects[TOP_N]) {
#pragma HLS ARRAY_PARTITION variable=trigger_objects complete dim=1
#pragma HLS ARRAY_PARTITION variable=top_clusters complete dim=1
    for (int i = 0; i < TOP_N; ++i) {
#pragma HLS UNROLL
        init_trigger_object(trigger_objects[i]);

        if (!top_clusters[i].valid) continue;

        make_trigger_object_from_cluster(top_clusters[i], trigger_objects[i]);
    }
}


void calo_trigger_ref(const tower_et_t grid[NETA][NPHI],
                      tower_et_t seed_threshold,
                      cluster_et_t cluster_threshold,
                      TriggerObject objects[TOP_N],
                      ht_t *ht,
                      int *num_clusters)
{
#pragma HLS INTERFACE bram port=grid

#pragma HLS INTERFACE s_axilite port=seed_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=cluster_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ht bundle=CTRL
#pragma HLS INTERFACE s_axilite port=num_clusters bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=objects complete dim=1

    Cluster clusters[MAX_CLUSTERS];
    Cluster top_clusters[TOP_N];
#pragma HLS ARRAY_PARTITION variable=top_clusters complete dim=1
    
    int local_num_clusters = 0;
    ht_t local_ht = 0;

    run_reference_trigger_3x3_iso5(grid,
                                   seed_threshold,
                                   cluster_threshold,
                                   clusters,
                                   local_num_clusters,
                                   top_clusters,
                                   objects,
                                   local_ht);

    *ht = local_ht;
    *num_clusters = local_num_clusters;
}


/// STREAMING IMPLEMENTATIONS


void calo_trigger_stream_ref(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            TriggerObject trigger_objects[TOP_N],
                            ht_t *ht,
                            int *num_clusters) {
#pragma HLS INTERFACE bram port=towers

#pragma HLS INTERFACE s_axilite port=seed_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=cluster_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ht bundle=CTRL
#pragma HLS INTERFACE s_axilite port=num_clusters bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=trigger_objects complete dim=1

    ht_t local_ht = compute_ht(towers);

    cluster_sort_build_stream(towers, seed_threshold, cluster_threshold, trigger_objects, num_clusters);

    *ht = local_ht;

}

void calo_trigger_em_jet_stream_ref(const tower_et_t towers[NETA][NPHI],
                                    tower_et_t em_seed_threshold,
                                    cluster_et_t em_cluster_threshold,
                                    tower_et_t jet_seed_threshold,
                                    cluster_et_t jet_cluster_threshold,
                                    TriggerObject em_objects[TOP_N],
                                    TriggerObject jet_objects[TOP_N],
                                    ht_t *ht,
                                    int *num_em_clusters,
                                    int *num_jet_clusters) {
#pragma HLS INTERFACE bram port=towers

#pragma HLS INTERFACE s_axilite port=em_seed_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=em_cluster_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=jet_seed_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=jet_cluster_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ht bundle=CTRL
#pragma HLS INTERFACE s_axilite port=num_em_clusters bundle=CTRL
#pragma HLS INTERFACE s_axilite port=num_jet_clusters bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=em_objects complete dim=1
#pragma HLS ARRAY_PARTITION variable=jet_objects complete dim=1

    ht_t local_ht = compute_ht(towers);

    cluster_sort_build_em_jet_stream(towers, em_seed_threshold, em_cluster_threshold, jet_seed_threshold, jet_cluster_threshold, em_objects, jet_objects, num_em_clusters, num_jet_clusters);

    *ht = local_ht;

}

void calo_trigger_tower_stream_ref(
    hls::stream<tower_et_t> &tower_in,
    tower_et_t em_seed_threshold,
    cluster_et_t em_cluster_threshold,
    tower_et_t jet_seed_threshold,
    cluster_et_t jet_cluster_threshold,
    TriggerObject em_objects[TOP_N],
    TriggerObject jet_objects[TOP_N],
    ht_t *ht,
    int *num_em_clusters,
    int *num_jet_clusters)
{
#pragma HLS INTERFACE axis port=tower_in

#pragma HLS INTERFACE s_axilite port=em_seed_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=em_cluster_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=jet_seed_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=jet_cluster_threshold bundle=CTRL
#pragma HLS INTERFACE s_axilite port=ht bundle=CTRL
#pragma HLS INTERFACE s_axilite port=num_em_clusters bundle=CTRL
#pragma HLS INTERFACE s_axilite port=num_jet_clusters bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

#pragma HLS ARRAY_PARTITION variable=em_objects complete dim=1
#pragma HLS ARRAY_PARTITION variable=jet_objects complete dim=1

    cluster_sort_build_tower_stream(tower_in,
                                    em_seed_threshold,
                                    em_cluster_threshold,
                                    jet_seed_threshold,
                                    jet_cluster_threshold,
                                    em_objects,
                                    jet_objects,
                                    ht,
                                    num_em_clusters,
                                    num_jet_clusters);
}

void produce_cluster_stream_3x3_iso5(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            hls::stream<Cluster> &cluster_stream) {
    find_clusters_stream<3, 5>(towers, seed_threshold, cluster_threshold, cluster_stream);
}

void produce_cluster_stream_7x7(const tower_et_t towers[NETA][NPHI],
                                tower_et_t seed_threshold,
                                cluster_et_t cluster_threshold,
                                hls::stream<Cluster> &cluster_stream)
{
    find_clusters_stream<7, 7>(towers, seed_threshold, cluster_threshold, cluster_stream);
}


void produce_em_cluster_stream(const tower_et_t towers[NETA][NPHI],
                               tower_et_t seed_threshold,
                               cluster_et_t cluster_threshold,
                               hls::stream<Cluster> &cluster_stream)
{
    const int R = EM_SCAN_RADIUS;

    for (int eta = R; eta < NETA - R; eta++) {
        for (int phi = 0; phi < NPHI; phi++) {
#pragma HLS PIPELINE II=1

            Cluster candidate;
            init_cluster(candidate, eta, phi, EM_CLUSTER_W, EM_ISO_W);

            tower_et_t seed_et = towers[eta][phi];

            if (seed_et >= seed_threshold &&
                is_local_maximum<EM_CLUSTER_W>(towers, eta, phi)) {

                cluster_et_t core3_et = window_sum<3>(towers, eta, phi);
                cluster_et_t sum5_et  = window_sum<5>(towers, eta, phi);
                cluster_et_t sum7_et  = window_sum<7>(towers, eta, phi);

                cluster_et_t iso5_et  = sum5_et - core3_et;
                cluster_et_t ring7_et = sum7_et - core3_et;

                if (core3_et >= cluster_threshold && is_em_like(core3_et, iso5_et, ring7_et)) {
                    set_valid_cluster(candidate, core3_et, iso5_et, eta, phi, EM_CLUSTER_W, EM_ISO_W);
                }
            }

            cluster_stream.write(candidate);
        }
    }
}

void produce_jet_cluster_stream(const tower_et_t towers[NETA][NPHI],
                                tower_et_t seed_threshold,
                                cluster_et_t cluster_threshold,
                                hls::stream<Cluster> &cluster_stream)
{
    const int R = JET_SCAN_RADIUS;

    for (int eta = R; eta < NETA - R; eta++) {
        for (int phi = 0; phi < NPHI; phi++) {
#pragma HLS PIPELINE II=1

            Cluster candidate;
            init_cluster(candidate, eta, phi, JET_CLUSTER_W, JET_ISO_W);

            tower_et_t seed_et = towers[eta][phi];

            if (seed_et >= seed_threshold &&
                is_local_maximum<JET_CLUSTER_W>(towers, eta, phi)) {

                cluster_et_t core3_et = window_sum<3>(towers, eta, phi);
                cluster_et_t sum7_et  = window_sum<7>(towers, eta, phi);
                cluster_et_t ring7_et = sum7_et - core3_et;

                if (sum7_et >= cluster_threshold &&
                    is_jet_like(core3_et, sum7_et)) {
                    set_valid_cluster(candidate, sum7_et, ring7_et, eta, phi, JET_CLUSTER_W, JET_ISO_W);
                }
            }

            cluster_stream.write(candidate);
        }
    }
}




void cluster_sort_build_stream(const tower_et_t towers[NETA][NPHI],
                            tower_et_t seed_threshold,
                            cluster_et_t cluster_threshold,
                            TriggerObject trigger_objects[TOP_N],
                            int *num_clusters) {

#pragma HLS DATAFLOW

    hls::stream<Cluster> cluster_stream;

#pragma HLS STREAM variable=cluster_stream depth=64

    Cluster top_clusters[TOP_N];
#pragma HLS ARRAY_PARTITION variable=top_clusters complete dim=1

    produce_cluster_stream_3x3_iso5(towers, seed_threshold, cluster_threshold, cluster_stream);
    select_top_n_from_stream_fixed<EM_SCAN_CELLS>(cluster_stream, top_clusters, num_clusters);
    build_trigger_objects(top_clusters, trigger_objects);
}




void cluster_sort_build_em_jet_stream(const tower_et_t towers[NETA][NPHI],
                                      tower_et_t em_seed_threshold,
                                      cluster_et_t em_cluster_threshold,
                                      tower_et_t jet_seed_threshold,
                                      cluster_et_t jet_cluster_threshold,
                                      TriggerObject em_objects[TOP_N],
                                      TriggerObject jet_objects[TOP_N],
                                      int *num_em_clusters,
                                      int *num_jet_clusters) {
#pragma HLS DATAFLOW
    hls::stream<Cluster> em_cluster_stream;
    hls::stream<Cluster> jet_cluster_stream;


#pragma HLS STREAM variable=em_cluster_stream depth=64
#pragma HLS STREAM variable=jet_cluster_stream depth=64

    Cluster em_top_clusters[TOP_N];
    Cluster jet_top_clusters[TOP_N];

#pragma HLS ARRAY_PARTITION variable=em_top_clusters complete dim=1
#pragma HLS ARRAY_PARTITION variable=jet_top_clusters complete dim=1

    produce_em_cluster_stream(towers,
                            em_seed_threshold,
                            em_cluster_threshold,
                            em_cluster_stream);

    produce_jet_cluster_stream(towers,
                            jet_seed_threshold,
                            jet_cluster_threshold,
                            jet_cluster_stream);

    select_top_n_from_stream_fixed<EM_SCAN_CELLS>(em_cluster_stream, em_top_clusters, num_em_clusters);
    select_top_n_from_stream_fixed<JET_SCAN_CELLS>(jet_cluster_stream, jet_top_clusters, num_jet_clusters);

    build_trigger_objects(em_top_clusters, em_objects);
    build_trigger_objects(jet_top_clusters, jet_objects);




}



void produce_em_jet_cluster_stream_from_towers(
    hls::stream<tower_et_t> &tower_in,
    tower_et_t em_seed_threshold,
    cluster_et_t em_cluster_threshold,
    tower_et_t jet_seed_threshold,
    cluster_et_t jet_cluster_threshold,
    hls::stream<Cluster> &em_cluster_stream,
    hls::stream<Cluster> &jet_cluster_stream,
    ht_t *ht)
{
    tower_et_t linebuf[TOWER_STREAM_WIN][NPHI];
#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1

    tower_et_t window[TOWER_STREAM_WIN][TOWER_STREAM_WIN];
#pragma HLS ARRAY_PARTITION variable=window complete dim=0

    ht_t local_ht = 0;

    for (int eta = 0; eta < NETA; eta++) {

        int write_row = eta % TOWER_STREAM_WIN;

        // Read one full eta row from the input stream.
        for (int phi = 0; phi < NPHI; phi++) {
#pragma HLS PIPELINE II=1

            tower_et_t incoming = tower_in.read();
            local_ht += (ht_t)incoming;
            linebuf[write_row][phi] = incoming;
        }

        // Once seven rows are available, generate candidates for the
        // center row eta - 3.
        if (eta >= TOWER_STREAM_WIN - 1) {

            int center_eta = eta - TOWER_STREAM_RADIUS;

            for (int center_phi = 0; center_phi < NPHI; center_phi++) {
#pragma HLS PIPELINE II=1

                // Build the local 7x7 window using the circular row buffer
                // and periodic phi wraparound.
                for (int d_eta = -TOWER_STREAM_RADIUS;
                     d_eta <= TOWER_STREAM_RADIUS;
                     d_eta++) {
#pragma HLS UNROLL

                    for (int d_phi = -TOWER_STREAM_RADIUS;
                                        d_phi <= TOWER_STREAM_RADIUS;
                                        d_phi++) {
#pragma HLS UNROLL

                        int src_eta = center_eta + d_eta;
                        int src_row = src_eta % TOWER_STREAM_WIN;
                        int src_phi = wrap_phi(center_phi + d_phi);

                        window[d_eta + TOWER_STREAM_RADIUS]
                              [d_phi + TOWER_STREAM_RADIUS] =
                            linebuf[src_row][src_phi];
                    }
                }

                Cluster em_candidate = make_em_candidate_from_window(window,center_eta,center_phi,em_seed_threshold, em_cluster_threshold);

                Cluster jet_candidate = make_jet_candidate_from_window(window,center_eta,center_phi,jet_seed_threshold, jet_cluster_threshold);

                em_cluster_stream.write(em_candidate);
                jet_cluster_stream.write(jet_candidate);
            }
        }
    }

    *ht = local_ht;
}

void cluster_sort_build_tower_stream(
    hls::stream<tower_et_t> &tower_in,
    tower_et_t em_seed_threshold,
    cluster_et_t em_cluster_threshold,
    tower_et_t jet_seed_threshold,
    cluster_et_t jet_cluster_threshold,
    TriggerObject em_objects[TOP_N],
    TriggerObject jet_objects[TOP_N],
    ht_t *ht,
    int *num_em_clusters,
    int *num_jet_clusters)
{
#pragma HLS DATAFLOW

    hls::stream<Cluster> em_cluster_stream;
    hls::stream<Cluster> jet_cluster_stream;

#pragma HLS STREAM variable=em_cluster_stream depth=64
#pragma HLS STREAM variable=jet_cluster_stream depth=64

    Cluster em_top_clusters[TOP_N];
    Cluster jet_top_clusters[TOP_N];

#pragma HLS ARRAY_PARTITION variable=em_top_clusters complete dim=1
#pragma HLS ARRAY_PARTITION variable=jet_top_clusters complete dim=1

    produce_em_jet_cluster_stream_from_towers(tower_in,
                                              em_seed_threshold,
                                              em_cluster_threshold,
                                              jet_seed_threshold,
                                              jet_cluster_threshold,
                                              em_cluster_stream,
                                              jet_cluster_stream,
                                              ht);

    select_top_n_from_stream_fixed<TOWER_STREAM_SCAN_CELLS>(em_cluster_stream,
                                                            em_top_clusters,
                                                            num_em_clusters);

    select_top_n_from_stream_fixed<TOWER_STREAM_SCAN_CELLS>(jet_cluster_stream,
                                                            jet_top_clusters,
                                                            num_jet_clusters);

    build_trigger_objects(em_top_clusters,
                          em_objects);

    build_trigger_objects(jet_top_clusters,
                          jet_objects);
}