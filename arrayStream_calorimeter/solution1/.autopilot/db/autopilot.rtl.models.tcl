set SynModuleInfo {
  {SRCNAME {find_clusters_stream<3, 5>} MODELNAME find_clusters_stream_3_5_s RTLNAME calo_trigger_stream_ref_find_clusters_stream_3_5_s
    SUBMODULES {
      {MODELNAME calo_trigger_stream_ref_flow_control_loop_pipe_sequential_init RTLNAME calo_trigger_stream_ref_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME calo_trigger_stream_ref_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME produce_cluster_stream_3x3_iso5 MODELNAME produce_cluster_stream_3x3_iso5 RTLNAME calo_trigger_stream_ref_produce_cluster_stream_3x3_iso5}
  {SRCNAME select_top_n_from_stream MODELNAME select_top_n_from_stream RTLNAME calo_trigger_stream_ref_select_top_n_from_stream
    SUBMODULES {
      {MODELNAME calo_trigger_stream_ref_sparsemux_15_3_20_1_1 RTLNAME calo_trigger_stream_ref_sparsemux_15_3_20_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_stream_ref_sparsemux_15_3_6_1_1 RTLNAME calo_trigger_stream_ref_sparsemux_15_3_6_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_stream_ref_sparsemux_15_3_4_1_1 RTLNAME calo_trigger_stream_ref_sparsemux_15_3_4_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_stream_ref_sparsemux_15_3_1_1_1 RTLNAME calo_trigger_stream_ref_sparsemux_15_3_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME build_trigger_objects MODELNAME build_trigger_objects RTLNAME calo_trigger_stream_ref_build_trigger_objects}
  {SRCNAME cluster_sort_build_stream MODELNAME cluster_sort_build_stream RTLNAME calo_trigger_stream_ref_cluster_sort_build_stream
    SUBMODULES {
      {MODELNAME calo_trigger_stream_ref_fifo_w61_d64_A RTLNAME calo_trigger_stream_ref_fifo_w61_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME cluster_stream_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_et_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_et_1_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_et_2_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_et_3_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_et_4_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_et_5_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_et_6_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_et_7_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_isolation_et_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_isolation_et_1_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_isolation_et_2_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_isolation_et_3_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_isolation_et_4_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_isolation_et_5_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_isolation_et_6_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w20_d2_S RTLNAME calo_trigger_stream_ref_fifo_w20_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_isolation_et_7_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_eta_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_eta_1_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_eta_2_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_eta_3_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_eta_4_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_eta_5_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_eta_6_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_eta_7_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_phi_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_phi_1_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_phi_2_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_phi_3_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_phi_4_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_phi_5_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_phi_6_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w6_d2_S RTLNAME calo_trigger_stream_ref_fifo_w6_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_phi_7_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_window_size_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_window_size_1_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_window_size_2_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_window_size_3_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_window_size_4_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_window_size_5_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_window_size_6_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w4_d2_S RTLNAME calo_trigger_stream_ref_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_window_size_7_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_valid_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_valid_1_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_valid_2_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_valid_3_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_valid_4_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_valid_5_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_valid_6_U}
      {MODELNAME calo_trigger_stream_ref_fifo_w1_d2_S RTLNAME calo_trigger_stream_ref_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME top_clusters_valid_7_U}
      {MODELNAME calo_trigger_stream_ref_start_for_select_top_n_from_stream_U0 RTLNAME calo_trigger_stream_ref_start_for_select_top_n_from_stream_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_select_top_n_from_stream_U0_U}
    }
  }
  {SRCNAME calo_trigger_stream_ref MODELNAME calo_trigger_stream_ref RTLNAME calo_trigger_stream_ref IS_TOP 1
    SUBMODULES {
      {MODELNAME calo_trigger_stream_ref_CTRL_s_axi RTLNAME calo_trigger_stream_ref_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
