set SynModuleInfo {
  {SRCNAME {find_clusters<3, 5>} MODELNAME find_clusters_3_5_s RTLNAME calo_trigger_ref_find_clusters_3_5_s
    SUBMODULES {
      {MODELNAME calo_trigger_ref_flow_control_loop_pipe_sequential_init RTLNAME calo_trigger_ref_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME calo_trigger_ref_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME select_top_n_Pipeline_VITIS_LOOP_108_1 MODELNAME select_top_n_Pipeline_VITIS_LOOP_108_1 RTLNAME calo_trigger_ref_select_top_n_Pipeline_VITIS_LOOP_108_1}
  {SRCNAME select_top_n_Pipeline_VITIS_LOOP_128_3 MODELNAME select_top_n_Pipeline_VITIS_LOOP_128_3 RTLNAME calo_trigger_ref_select_top_n_Pipeline_VITIS_LOOP_128_3}
  {SRCNAME select_top_n_Pipeline_VITIS_LOOP_131_4 MODELNAME select_top_n_Pipeline_VITIS_LOOP_131_4 RTLNAME calo_trigger_ref_select_top_n_Pipeline_VITIS_LOOP_131_4}
  {SRCNAME select_top_n MODELNAME select_top_n RTLNAME calo_trigger_ref_select_top_n}
  {SRCNAME calo_trigger_ref_Pipeline_VITIS_LOOP_156_1 MODELNAME calo_trigger_ref_Pipeline_VITIS_LOOP_156_1 RTLNAME calo_trigger_ref_calo_trigger_ref_Pipeline_VITIS_LOOP_156_1}
  {SRCNAME calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2 MODELNAME calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2 RTLNAME calo_trigger_ref_calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2}
  {SRCNAME calo_trigger_ref MODELNAME calo_trigger_ref RTLNAME calo_trigger_ref IS_TOP 1
    SUBMODULES {
      {MODELNAME calo_trigger_ref_top_clusters_valid_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_top_clusters_valid_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_et_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_et_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_isolation_et_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_isolation_et_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_eta_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_eta_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_phi_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_phi_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_window_size_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_window_size_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_clusters_iso_outer_size_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_clusters_iso_outer_size_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_top_clusters_et_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_top_clusters_et_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_top_clusters_isolation_et_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_top_clusters_isolation_et_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_top_clusters_eta_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_top_clusters_eta_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_top_clusters_phi_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_top_clusters_phi_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_top_clusters_window_size_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_top_clusters_window_size_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calo_trigger_ref_top_clusters_iso_outer_size_RAM_AUTO_1R1W RTLNAME calo_trigger_ref_top_clusters_iso_outer_size_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
