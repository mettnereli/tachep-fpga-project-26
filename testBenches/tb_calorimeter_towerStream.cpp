#include <iostream>
#include "calorimeter.h"


#define USE_STREAMING_IMPLEMENTATION 1


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


    //DEPOSIT 5 (test local maximum behavior and phi wrapping).
    towers[12][30] = 50;
    towers[12][31] = 70;


    //DEPOSIT 6 (isolation energy around one cluster has isolation change but not cluster ET change)
    towers[3][10] = 5;
    towers[7][10] = 6;
    towers[5][8] = 7;
    towers[5][12] = 8;

    // BROAD JET-LIKE DEPOSIT
    // A wider energy pattern centered near eta = 22, phi = 15.
    // The center is still the local maximum, but energy is spread over a wider area.
    towers[22][15] = 90;

    towers[22][14] = 35;
    towers[22][16] = 32;
    towers[21][15] = 30;
    towers[23][15] = 28;

    towers[21][14] = 20;
    towers[21][16] = 18;
    towers[23][14] = 17;
    towers[23][16] = 16;

    towers[20][15] = 14;
    towers[24][15] = 13;
    towers[22][13] = 12;
    towers[22][17] = 11;

    //Output cluster array
    TriggerObject em_objects[TOP_N];
    TriggerObject jet_objects[TOP_N];

    int num_em_clusters = 0;
    int num_jet_clusters = 0;
    ht_t ht = 0;

    //Run cluster finding
    tower_et_t em_seed_threshold = 20;
    cluster_et_t em_cluster_threshold = 50;

    tower_et_t jet_seed_threshold = 20;
    cluster_et_t jet_cluster_threshold = 50;

    hls::stream<tower_et_t> tower_stream;

    for (int eta = 0; eta < NETA; eta++) {
        for (int phi = 0; phi < NPHI; phi++) {
            tower_stream.write(towers[eta][phi]);
        }
    }
    calo_trigger_tower_stream_ref(tower_stream,
                                  em_seed_threshold,
                                  em_cluster_threshold,
                                  jet_seed_threshold,
                                  jet_cluster_threshold,
                                  em_objects,
                                  jet_objects,
                                  &ht,
                                  &num_em_clusters,
                                  &num_jet_clusters);
                                  
    std::cout << "HT = " << ht << std::endl;
    std::cout << "Number of EM clusters found = " << num_em_clusters << std::endl;
    std::cout << "Number of jet clusters found = " << num_jet_clusters << std::endl;

    std::cout << "\nEM trigger objects:\n";
    for (int i = 0; i < TOP_N; i++) {
        if (!em_objects[i].valid) {
            continue;
        }

        std::cout << "EM Object " << i
                << " | ET = " << em_objects[i].et
                << " | iso = " << em_objects[i].isolation_et
                << " | eta = " << em_objects[i].eta
                << " | phi = " << em_objects[i].phi
                << " | window = " << em_objects[i].window_size
                << " | type = " << em_objects[i].type
                << std::endl;
    }

    std::cout << "\nJet trigger objects:\n";
    for (int i = 0; i < TOP_N; i++) {
        if (!jet_objects[i].valid) {
            continue;
        }

        std::cout << "Jet Object " << i
                << " | ET = " << jet_objects[i].et
                << " | iso = " << jet_objects[i].isolation_et
                << " | eta = " << jet_objects[i].eta
                << " | phi = " << jet_objects[i].phi
                << " | window = " << jet_objects[i].window_size
                << " | type = " << jet_objects[i].type
                << std::endl;
    }

    int errors = 0;

    if (ht != 1028) {
        std::cout << "ERROR: Expected HT = 1028, got " << ht << std::endl;
        errors++;
    }

    if (num_em_clusters != 4) {
        std::cout << "ERROR: Expected 4 EM clusters, got "
                << num_em_clusters << std::endl;
        errors++;
    }

    if (num_jet_clusters != 1) {
        std::cout << "ERROR: Expected 1 jet cluster, got "
                << num_jet_clusters << std::endl;
        errors++;
    }

    if (!em_objects[0].valid ||
        em_objects[0].et != 221 ||
        em_objects[0].isolation_et != 26 ||
        em_objects[0].eta != 5 ||
        em_objects[0].phi != 10 ||
        em_objects[0].window_size != 3 ||
        em_objects[0].type != TRIG_EM) {
        std::cout << "ERROR: EM object 0 mismatch" << std::endl;
        errors++;
    }

    if (!em_objects[1].valid ||
        em_objects[1].et != 139 ||
        em_objects[1].isolation_et != 22 ||
        em_objects[1].eta != 10 ||
        em_objects[1].phi != 20 ||
        em_objects[1].window_size != 3 ||
        em_objects[1].type != TRIG_EM) {
        std::cout << "ERROR: EM object 1 mismatch" << std::endl;
        errors++;
    }

    if (!em_objects[2].valid ||
        em_objects[2].et != 133 ||
        em_objects[2].isolation_et != 21 ||
        em_objects[2].eta != 18 ||
        em_objects[2].phi != 40 ||
        em_objects[2].window_size != 3 ||
        em_objects[2].type != TRIG_EM) {
        std::cout << "ERROR: EM object 2 mismatch" << std::endl;
        errors++;
    }

    if (!em_objects[3].valid ||
        em_objects[3].et != 120 ||
        em_objects[3].isolation_et != 0 ||
        em_objects[3].eta != 12 ||
        em_objects[3].phi != 31 ||
        em_objects[3].window_size != 3 ||
        em_objects[3].type != TRIG_EM) {
        std::cout << "ERROR: EM object 3 mismatch" << std::endl;
        errors++;
    }

    for (int i = 4; i < TOP_N; i++) {
        if (em_objects[i].valid) {
            std::cout << "ERROR: EM object " << i
                    << " should be invalid" << std::endl;
            errors++;
        }
    }

    if (!jet_objects[0].valid ||
        jet_objects[0].et != 336 ||
        jet_objects[0].isolation_et != 50 ||
        jet_objects[0].eta != 22 ||
        jet_objects[0].phi != 15 ||
        jet_objects[0].window_size != 7 ||
        jet_objects[0].type != TRIG_JET) {
        std::cout << "ERROR: Jet object 0 mismatch" << std::endl;
        errors++;
    }

    for (int i = 1; i < TOP_N; i++) {
        if (jet_objects[i].valid) {
            std::cout << "ERROR: Jet object " << i
                    << " should be invalid" << std::endl;
            errors++;
        }
    }

    if (errors == 0) {
        std::cout << "Test PASSED" << std::endl;
    } else {
        std::cout << "Test FAILED with " << errors << " errors" << std::endl;
    }

    return errors;
}
