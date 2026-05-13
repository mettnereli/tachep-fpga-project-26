// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// CTRL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of em_seed_threshold
//        bit 11~0 - em_seed_threshold[11:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of em_cluster_threshold
//        bit 19~0 - em_cluster_threshold[19:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of jet_seed_threshold
//        bit 11~0 - jet_seed_threshold[11:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of jet_cluster_threshold
//        bit 19~0 - jet_cluster_threshold[19:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// 0x30 : Data signal of ht
//        bit 23~0 - ht[23:0] (Read)
//        others   - reserved
// 0x34 : Control signal of ht
//        bit 0  - ht_ap_vld (Read/COR)
//        others - reserved
// 0x40 : Data signal of num_em_clusters
//        bit 31~0 - num_em_clusters[31:0] (Read)
// 0x44 : Control signal of num_em_clusters
//        bit 0  - num_em_clusters_ap_vld (Read/COR)
//        others - reserved
// 0x50 : Data signal of num_jet_clusters
//        bit 31~0 - num_jet_clusters[31:0] (Read)
// 0x54 : Control signal of num_jet_clusters
//        bit 0  - num_jet_clusters_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_AP_CTRL                    0x00
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_GIE                        0x04
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_IER                        0x08
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_ISR                        0x0c
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_EM_SEED_THRESHOLD_DATA     0x10
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_BITS_EM_SEED_THRESHOLD_DATA     12
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_EM_CLUSTER_THRESHOLD_DATA  0x18
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_BITS_EM_CLUSTER_THRESHOLD_DATA  20
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_JET_SEED_THRESHOLD_DATA    0x20
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_BITS_JET_SEED_THRESHOLD_DATA    12
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_JET_CLUSTER_THRESHOLD_DATA 0x28
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_BITS_JET_CLUSTER_THRESHOLD_DATA 20
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_HT_DATA                    0x30
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_BITS_HT_DATA                    24
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_HT_CTRL                    0x34
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_NUM_EM_CLUSTERS_DATA       0x40
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_BITS_NUM_EM_CLUSTERS_DATA       32
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_NUM_EM_CLUSTERS_CTRL       0x44
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_NUM_JET_CLUSTERS_DATA      0x50
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_BITS_NUM_JET_CLUSTERS_DATA      32
#define XCALO_TRIGGER_TOWER_STREAM_REF_CTRL_ADDR_NUM_JET_CLUSTERS_CTRL      0x54

