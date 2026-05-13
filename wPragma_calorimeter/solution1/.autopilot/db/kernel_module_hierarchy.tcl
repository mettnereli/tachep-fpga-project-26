set ModuleHierarchy {[{
"Name" : "calo_trigger_ref","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_find_clusters_3_5_s_fu_278","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "FIND_ETA_FIND_PHI","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_select_top_n_fu_302","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "FIND_CLUSTER","ID" : "4","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_135_2","ID" : "5","Type" : "no"},]},]},],
"SubLoops" : [
	{"Name" : "HT_ETA_HT_PHI","ID" : "6","Type" : "pipeline"},]
}]}