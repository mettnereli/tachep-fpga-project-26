set ModuleHierarchy {[{
"Name" : "calo_trigger_em_jet_stream_ref","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cluster_sort_build_em_jet_stream_fu_205","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "produce_em_cluster_stream_U0","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_328_1_VITIS_LOOP_329_2","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "produce_jet_cluster_stream_U0","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_375_1_VITIS_LOOP_376_2","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "select_top_n_from_stream_fixed_1440_U0","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_467_2","ID" : "7","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_113_1","ID" : "8","Type" : "no"},]},]},
		{"Name" : "build_trigger_objects_U0","ID" : "9","Type" : "sequential"},
		{"Name" : "select_top_n_from_stream_fixed_1440_1_U0","ID" : "10","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_467_2","ID" : "11","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_113_1","ID" : "12","Type" : "no"},]},]},
		{"Name" : "build_trigger_objects_2_U0","ID" : "13","Type" : "sequential"},]},],
"SubLoops" : [
	{"Name" : "HT_ETA_HT_PHI","ID" : "14","Type" : "pipeline"},]
}]}