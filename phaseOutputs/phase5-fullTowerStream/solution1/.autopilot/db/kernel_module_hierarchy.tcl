set ModuleHierarchy {[{
"Name" : "calo_trigger_tower_stream_ref","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cluster_sort_build_tower_stream_fu_118","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "produce_em_jet_cluster_stream_from_towers_U0","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_481_1","ID" : "3","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2_fu_153","ID" : "4","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_486_2","ID" : "5","Type" : "pipeline"},]},
			{"Name" : "grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_500_3","ID" : "7","Type" : "pipeline"},]},]},]},
		{"Name" : "select_top_n_from_stream_fixed_1440_U0","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_668_1","ID" : "9","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_113_1","ID" : "10","Type" : "no"},]},]},
		{"Name" : "select_top_n_from_stream_fixed_1440_1_U0","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_668_1","ID" : "12","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_113_1","ID" : "13","Type" : "no"},]},]},
		{"Name" : "build_trigger_objects_U0","ID" : "14","Type" : "sequential"},
		{"Name" : "build_trigger_objects_2_U0","ID" : "15","Type" : "sequential"},]},]
}]}