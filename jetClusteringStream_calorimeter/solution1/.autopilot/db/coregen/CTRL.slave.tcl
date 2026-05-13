dict set slaves CTRL {ports {em_seed_threshold {type i_ap_none width 12} em_cluster_threshold {type i_ap_none width 20} jet_seed_threshold {type i_ap_none width 12} jet_cluster_threshold {type i_ap_none width 20} ht {type o_ap_vld width 24} num_em_clusters {type o_ap_vld width 32} num_jet_clusters {type o_ap_vld width 32} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
