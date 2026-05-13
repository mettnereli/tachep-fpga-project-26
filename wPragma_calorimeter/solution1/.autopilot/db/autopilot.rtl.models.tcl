set SynModuleInfo {
  {SRCNAME {find_clusters<3, 5>} MODELNAME find_clusters_3_5_s RTLNAME calo_trigger_ref_find_clusters_3_5_s
    SUBMODULES {
      {MODELNAME calo_trigger_ref_flow_control_loop_pipe_sequential_init RTLNAME calo_trigger_ref_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME calo_trigger_ref_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME select_top_n MODELNAME select_top_n RTLNAME calo_trigger_ref_select_top_n
    SUBMODULES {
      {MODELNAME calo_trigger_ref_sparsemux_15_3_20_1_1 RTLNAME calo_trigger_ref_sparsemux_15_3_20_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_ref_sparsemux_15_3_6_1_1 RTLNAME calo_trigger_ref_sparsemux_15_3_6_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_ref_sparsemux_15_3_4_1_1 RTLNAME calo_trigger_ref_sparsemux_15_3_4_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME calo_trigger_ref_sparsemux_15_3_1_1_1 RTLNAME calo_trigger_ref_sparsemux_15_3_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME calo_trigger_ref MODELNAME calo_trigger_ref RTLNAME calo_trigger_ref IS_TOP 1
    SUBMODULES {
      {MODELNAME calo_trigger_ref_clusters_et_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_et_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_eta_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_eta_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_phi_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_phi_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_window_size_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_window_size_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_iso_outer_size_RAM_AUTO_0R0W RTLNAME calo_trigger_ref_clusters_iso_outer_size_RAM_AUTO_0R0W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_CTRL_s_axi RTLNAME calo_trigger_ref_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
