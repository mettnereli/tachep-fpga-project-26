set ModuleHierarchy {[{
"Name" : "calo_trigger_ref","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_find_clusters_3_5_s_fu_134","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_218_1_VITIS_LOOP_219_2","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_select_top_n_fu_159","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_108_1","ID" : "5","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_118_2","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_128_3","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_131_4","ID" : "10","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2_fu_178","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_145_1_VITIS_LOOP_146_2","ID" : "12","Type" : "pipeline"},]},
	{"Name" : "grp_calo_trigger_ref_Pipeline_VITIS_LOOP_156_1_fu_185","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_156_1","ID" : "14","Type" : "pipeline"},]},]
}]}