set ModuleHierarchy {[{
"Name" : "calo_trigger_stream_ref","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cluster_sort_build_stream_fu_165","ID" : "1","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "produce_cluster_stream_3x3_iso5_U0","ID" : "2","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_find_clusters_stream_3_5_s_fu_38","ID" : "3","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_288_1_VITIS_LOOP_289_2","ID" : "4","Type" : "pipeline"},]},]},
		{"Name" : "select_top_n_from_stream_U0","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_299_2","ID" : "6","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_113_1","ID" : "7","Type" : "no"},]},]},
		{"Name" : "build_trigger_objects_U0","ID" : "8","Type" : "sequential"},]},],
"SubLoops" : [
	{"Name" : "HT_ETA_HT_PHI","ID" : "9","Type" : "pipeline"},]
}]}