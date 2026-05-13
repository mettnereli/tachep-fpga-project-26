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

// Sort by ET and select top N clusters.
// If ET is equal, smaller eta first
// IF eta is equal, smaller phi first
void select_top_n(const Cluster clusters[MAX_CLUSTERS], 
                  int num_clusters, 
                  Cluster top_clusters[TOP_N]) {
#pragma HLS ARRAY_PARTITION variable=top_clusters complete dim=1
    // Simple selection sort for top N clusters
    INIT_TOP: for (int i = 0; i < TOP_N; i++) {
#pragma HLS UNROLL
        top_clusters[i].et = 0;
        top_clusters[i].isolation_et = 0;
        top_clusters[i].eta = 0;
        top_clusters[i].phi = 0;
        top_clusters[i].window_size = 0;
        top_clusters[i].iso_outer_size = 0;
        top_clusters[i].valid = false;
    }

    FIND_CLUSTER: for (int i = 0; i < MAX_CLUSTERS; ++i) {
#pragma HLS PIPELINE II=1
	if (i >= num_clusters) {
		continue;
	}
        if (!clusters[i].valid) { 
		continue;
	}

        Cluster candidate = clusters[i];

        for (int j = 0; j < TOP_N; j++) {
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
        trigger_objects[i].et = 0;
        trigger_objects[i].isolation_et = 0;
        trigger_objects[i].eta = 0;
        trigger_objects[i].phi = 0;
        trigger_objects[i].window_size = 0;
        trigger_objects[i].type = TRIG_NONE;
        trigger_objects[i].valid = false;

        if (!top_clusters[i].valid) {
            continue;
        }

        trigger_objects[i].et = top_clusters[i].et;
        trigger_objects[i].isolation_et = top_clusters[i].isolation_et;
        trigger_objects[i].eta = top_clusters[i].eta;
        trigger_objects[i].phi = top_clusters[i].phi;
        trigger_objects[i].window_size = top_clusters[i].window_size;


        // Classification logic based on window size.
        if (top_clusters[i].window_size == 3) {
            trigger_objects[i].type = TRIG_EM;
        } else {
            trigger_objects[i].type = TRIG_JET;
        }

	trigger_objects[i].valid = true;
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
#pragma HLS ARRAY_PARTITION variable=top_clusters complete dim=1

    Cluster clusters[MAX_CLUSTERS];
    Cluster top_clusters[TOP_N];

    
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
