#include <iostream>
#include "calorimeter.h"

int main()
{
    tower_et_t towers[NETA][NPHI] = {0}; // Initialize all towers to zero ET

    
    // Set up test cases with a clear cluster and isolation pattern


    // DEPOSIT 1
    towers[10][20] = 100; // Seed tower
    //Neighboring towers for 3x3 cluster:
    towers[10][19] = 10;
    towers[10][21] = 12;  
    towers[9][20] = 8;  
    towers[11][20] = 9;  

    // Surrounding 5x5 area for isolation
    towers[8][20] = 4;
    towers[12][20] = 5;
    towers[10][18] = 6;
    towers[10][22] = 7;


    //DEPOSIT 2
    towers[18][40] = 80; // Seed tower
    //Neighboring towers for 3x3 cluster:
    towers[18][39] = 15;
    towers[18][41] = 14;
    towers[17][40] = 11;
    towers[19][40] = 13;

    //Isolation for 5x5
    towers[16][40] = 3;
    towers[20][40] = 6;
    towers[18][38] = 5;
    towers[18][42] = 7;


    //DEPOSIT 3
    towers[5][10] = 150;
    towers[5][9]  = 20;
    towers[5][11] = 18;
    towers[4][10] = 17;
    towers[6][10] = 16;

    //DEPOSIT 4 (below seed threshold)
    towers[25][30] = 10;


    //DEPOSIT 5 (above seed threshold but not a local maximum)
    towers[12][30] = 50;
    towers[12][31] = 70;


    //DEPOSIT 6 (isolation energy around one cluster has isolation change but not cluster ET change)
    towers[3][10] = 5;
    towers[7][10] = 6;
    towers[5][8] = 7;
    towers[5][12] = 8;


    //Thresholds
    tower_et_t seed_threshold = 20;
    cluster_et_t cluster_threshold = 50;

    //Output cluster array
    Cluster clusters[MAX_CLUSTERS];
    Cluster top_clusters[TOP_N];
    TriggerObject objects[TOP_N];
    int num_clusters = 0;
    ht_t ht = 0;

    //Run cluster finding
    calo_trigger_ref(towers,
                    seed_threshold,
                    cluster_threshold,
                    objects,
                    &ht,
                    &num_clusters);

    std::cout << "HT = " << ht << std::endl;
    std::cout << "Number of clusters found: " << num_clusters << std::endl;

    std::cout << "\nAll clusters:\n";
    for (int i = 0; i < num_clusters; i++) {
        std::cout << "Cluster " << i
                << " | ET = " << clusters[i].et
                << " | iso = " << clusters[i].isolation_et
                << " | eta = " << clusters[i].eta
                << " | phi = " << clusters[i].phi
                << " | window = " << clusters[i].window_size << "x"
                << clusters[i].window_size
                << std::endl;
    }

    std::cout << "\nTop clusters:\n";
    for (int i = 0; i < TOP_N; i++) {
        if (!top_clusters[i].valid) {
            continue;
        }

        std::cout << "Top " << i
                << " | ET = " << top_clusters[i].et
                << " | iso = " << top_clusters[i].isolation_et
                << " | eta = " << top_clusters[i].eta
                << " | phi = " << top_clusters[i].phi
                << std::endl;
    }

    std::cout << "\nTrigger objects:\n";
    for (int i = 0; i < TOP_N; i++) {
        if (!objects[i].valid) {
            continue;
        }

        std::cout << "Object " << i
                << " | ET = " << objects[i].et
                << " | iso = " << objects[i].isolation_et
                << " | eta = " << objects[i].eta
                << " | phi = " << objects[i].phi
                << " | type = " << objects[i].type
                << std::endl;
    }
    return 0;
}