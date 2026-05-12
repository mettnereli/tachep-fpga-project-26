#ifndef CALORIMETER_H
#define CALORIMETER_H

#include <ap_int.h>



// Detector geometry

#define NETA 30
#define NPHI 60
#define MAX_CLUSTERS (NETA * NPHI)




// Data types

//Each tower's transverse energy (ET) is represented as a 12-bit unsigned integer
typedef ap_uint<12> tower_et_t; 


// Each cluster's transverse energy (ET) is represented as a 20-bit unsigned integer
typedef ap_uint<20> cluster_et_t;


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

#define TOP_N 8


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

//Top function
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
    cluster_et_t sum = 0;
    int half_W = W / 2;
    for (int d_eta = -half_W; d_eta <= half_W; ++d_eta) {
        for (int d_phi = -half_W; d_phi <= half_W; ++d_phi) {
            int phi_idx = wrap_phi(phi + d_phi); // Wrap around in phi
            // eta does not wrap around, so treat out of bounds as zero ET
            int eta_idx = eta + d_eta;
            if (eta_idx >= 0 && eta_idx < NETA) {
                sum += towers[eta_idx][phi_idx];
            }
        }
    }
    return sum;
}


// Check if center of window is a local maximum
template<int W>
bool is_local_maximum(const tower_et_t towers[NETA][NPHI], int eta, int phi) {
    tower_et_t center_et = towers[eta][phi];
    int half_W = W / 2;

    for (int d_eta = -half_W; d_eta <= half_W; ++d_eta) {
        for (int d_phi = -half_W; d_phi <= half_W; ++d_phi) {

            if (d_eta == 0 && d_phi == 0) {
                continue;
            }

            int eta_idx = eta + d_eta;
            int phi_idx = wrap_phi(phi + d_phi);

            tower_et_t neighbor = towers[eta_idx][phi_idx];

            if (neighbor > center_et) {
                return false;
            } else if (neighbor == center_et) {
                if (d_eta < 0 || (d_eta == 0 && d_phi < 0)) {
                    return false;
                }
            }
        }
    }

    return true;
}

// Now to get isolation energery we can use the same window sum function but with a larger window and subtract the cluster energy
// For example, for a 5x5 isolation window around a 3x3 cluster, we can do:
// isolation_et = window_sum<5>(towers, eta, phi) - window_sum<3>(towers, eta, phi);
// But let's generalize a template for ease of use later

template<int inner_W, int outer_W>
cluster_et_t isolation_sum(const tower_et_t towers[NETA][NPHI], int eta, int phi) {
    return window_sum<outer_W>(towers, eta, phi) - window_sum<inner_W>(towers, eta, phi);
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
    for (int eta = HALF_W; eta < NETA - HALF_W; eta++) {
        for (int phi = HALF_W; phi < NPHI - HALF_W; phi++) {
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

#endif // CALORIMETER_H
