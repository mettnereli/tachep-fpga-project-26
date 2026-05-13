set SynModuleInfo {
  {SRCNAME produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2 MODELNAME produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2 RTLNAME calo_trigger_tower_stream_ref_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2
    SUBMODULES {
      {MODELNAME calo_trigger_tower_stream_ref_flow_control_loop_pipe_sequential_init RTLNAME calo_trigger_tower_stream_ref_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME calo_trigger_tower_stream_ref_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3 MODELNAME produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3 RTLNAME calo_trigger_tower_stream_ref_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3
    SUBMODULES {
      {MODELNAME calo_trigger_tower_stream_ref_sparsemux_15_3_12_1_1 RTLNAME calo_trigger_tower_stream_ref_sparsemux_15_3_12_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME produce_em_jet_cluster_stream_from_towers MODELNAME produce_em_jet_cluster_stream_from_towers RTLNAME calo_trigger_tower_stream_ref_produce_em_jet_cluster_stream_from_towers
    SUBMODULES {
      {MODELNAME calo_trigger_tower_stream_ref_urem_5ns_4ns_3_9_seq_1 RTLNAME calo_trigger_tower_stream_ref_urem_5ns_4ns_3_9_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_tower_stream_ref_produce_em_jet_cluster_stream_from_towers_linebuf_RAM_1WNR_AUTO_1R1W RTLNAME calo_trigger_tower_stream_ref_produce_em_jet_cluster_stream_from_towers_linebuf_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME select_top_n_from_stream_fixed<1440> MODELNAME select_top_n_from_stream_fixed_1440_s RTLNAME calo_trigger_tower_stream_ref_select_top_n_from_stream_fixed_1440_s
    SUBMODULES {
      {MODELNAME calo_trigger_tower_stream_ref_sparsemux_15_3_20_1_1 RTLNAME calo_trigger_tower_stream_ref_sparsemux_15_3_20_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_tower_stream_ref_sparsemux_15_3_6_1_1 RTLNAME calo_trigger_tower_stream_ref_sparsemux_15_3_6_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_tower_stream_ref_sparsemux_15_3_4_1_1 RTLNAME calo_trigger_tower_stream_ref_sparsemux_15_3_4_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_tower_stream_ref_sparsemux_15_3_1_1_1 RTLNAME calo_trigger_tower_stream_ref_sparsemux_15_3_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME select_top_n_from_stream_fixed<1440>.1 MODELNAME select_top_n_from_stream_fixed_1440_1 RTLNAME calo_trigger_tower_stream_ref_select_top_n_from_stream_fixed_1440_1}
  {SRCNAME build_trigger_objects MODELNAME build_trigger_objects RTLNAME calo_trigger_tower_stream_ref_build_trigger_objects}
  {SRCNAME build_trigger_objects.2 MODELNAME build_trigger_objects_2 RTLNAME calo_trigger_tower_stream_ref_build_trigger_objects_2}
  {SRCNAME cluster_sort_build_tower_stream MODELNAME cluster_sort_build_tower_stream RTLNAME calo_trigger_tower_stream_ref_cluster_sort_build_tower_stream
    SUBMODULES {
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w61_d64_A RTLNAME calo_trigger_tower_stream_ref_fifo_w61_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME em_cluster_stream_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w61_d64_A RTLNAME calo_trigger_tower_stream_ref_fifo_w61_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME jet_cluster_stream_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_et_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_et_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_et_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_et_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_et_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_et_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_et_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_et_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_isolation_et_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_isolation_et_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_isolation_et_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_isolation_et_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_isolation_et_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_isolation_et_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_isolation_et_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_isolation_et_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_eta_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_eta_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_eta_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_eta_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_eta_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_eta_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_eta_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_eta_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_phi_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_phi_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_phi_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_phi_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_phi_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_phi_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_phi_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_phi_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_window_size_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_window_size_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_window_size_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_window_size_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_window_size_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_window_size_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_window_size_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_window_size_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_valid_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_valid_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_valid_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_valid_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_valid_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_valid_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_valid_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME em_top_clusters_valid_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_et_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_et_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_et_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_et_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_et_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_et_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_et_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_et_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_isolation_et_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_isolation_et_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_isolation_et_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_isolation_et_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_isolation_et_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_isolation_et_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_isolation_et_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_isolation_et_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_eta_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_eta_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_eta_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_eta_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_eta_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_eta_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_eta_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_eta_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_phi_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_phi_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_phi_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_phi_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_phi_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_phi_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_phi_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_phi_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_window_size_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_window_size_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_window_size_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_window_size_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_window_size_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_window_size_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_window_size_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_window_size_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_valid_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_valid_1_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_valid_2_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_valid_3_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_valid_4_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_valid_5_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_valid_6_U}
      {MODELNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_tower_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME jet_top_clusters_valid_7_U}
      {MODELNAME calo_trigger_tower_stream_ref_start_for_select_top_n_from_stream_fixed_1440_U0 RTLNAME calo_trigger_tower_stream_ref_start_for_select_top_n_from_stream_fixed_1440_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_select_top_n_from_stream_fixed_1440_U0_U}
      {MODELNAME calo_trigger_tower_stream_ref_start_for_select_top_n_from_stream_fixed_1440_1_U0 RTLNAME calo_trigger_tower_stream_ref_start_for_select_top_n_from_stream_fixed_1440_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_select_top_n_from_stream_fixed_1440_1_U0_U}
    }
  }
  {SRCNAME calo_trigger_tower_stream_ref MODELNAME calo_trigger_tower_stream_ref RTLNAME calo_trigger_tower_stream_ref IS_TOP 1
    SUBMODULES {
      {MODELNAME calo_trigger_tower_stream_ref_CTRL_s_axi RTLNAME calo_trigger_tower_stream_ref_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME calo_trigger_tower_stream_ref_regslice_both RTLNAME calo_trigger_tower_stream_ref_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
