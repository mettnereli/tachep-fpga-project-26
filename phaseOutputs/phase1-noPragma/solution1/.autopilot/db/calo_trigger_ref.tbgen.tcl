set moduleName calo_trigger_ref
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {calo_trigger_ref}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict grid { MEM_WIDTH 12 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict objects { MEM_WIDTH 89 MEM_SIZE 96 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ grid int 12 regular {array 1800 { 1 1 } 1 1 }  }
	{ seed_threshold int 12 regular  }
	{ cluster_threshold int 20 regular  }
	{ objects int 89 regular {array 8 { 0 0 } 0 1 }  }
	{ ht int 24 regular {pointer 1}  }
	{ num_clusters int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "grid", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "objects", "interface" : "memory", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ht", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_clusters", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ grid_address0 sc_out sc_lv 11 signal 0 } 
	{ grid_ce0 sc_out sc_logic 1 signal 0 } 
	{ grid_q0 sc_in sc_lv 12 signal 0 } 
	{ grid_address1 sc_out sc_lv 11 signal 0 } 
	{ grid_ce1 sc_out sc_logic 1 signal 0 } 
	{ grid_q1 sc_in sc_lv 12 signal 0 } 
	{ seed_threshold sc_in sc_lv 12 signal 1 } 
	{ cluster_threshold sc_in sc_lv 20 signal 2 } 
	{ objects_address0 sc_out sc_lv 3 signal 3 } 
	{ objects_ce0 sc_out sc_logic 1 signal 3 } 
	{ objects_we0 sc_out sc_logic 1 signal 3 } 
	{ objects_d0 sc_out sc_lv 89 signal 3 } 
	{ objects_address1 sc_out sc_lv 3 signal 3 } 
	{ objects_ce1 sc_out sc_logic 1 signal 3 } 
	{ objects_we1 sc_out sc_logic 1 signal 3 } 
	{ objects_d1 sc_out sc_lv 89 signal 3 } 
	{ ht sc_out sc_lv 24 signal 4 } 
	{ ht_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ num_clusters sc_out sc_lv 32 signal 5 } 
	{ num_clusters_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "grid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "grid", "role": "address0" }} , 
 	{ "name": "grid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "ce0" }} , 
 	{ "name": "grid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "grid", "role": "q0" }} , 
 	{ "name": "grid_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "grid", "role": "address1" }} , 
 	{ "name": "grid_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grid", "role": "ce1" }} , 
 	{ "name": "grid_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "grid", "role": "q1" }} , 
 	{ "name": "seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "seed_threshold", "role": "default" }} , 
 	{ "name": "cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "cluster_threshold", "role": "default" }} , 
 	{ "name": "objects_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "objects", "role": "address0" }} , 
 	{ "name": "objects_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "objects", "role": "ce0" }} , 
 	{ "name": "objects_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "objects", "role": "we0" }} , 
 	{ "name": "objects_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects", "role": "d0" }} , 
 	{ "name": "objects_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "objects", "role": "address1" }} , 
 	{ "name": "objects_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "objects", "role": "ce1" }} , 
 	{ "name": "objects_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "objects", "role": "we1" }} , 
 	{ "name": "objects_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "objects", "role": "d1" }} , 
 	{ "name": "ht", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ht", "role": "default" }} , 
 	{ "name": "ht_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ht", "role": "ap_vld" }} , 
 	{ "name": "num_clusters", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_clusters", "role": "default" }} , 
 	{ "name": "num_clusters_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_clusters", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "17", "23", "25"],
		"CDFG" : "calo_trigger_ref",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22567", "EstimateLatencyMax" : "132367",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "grid", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2_fu_178", "Port" : "grid", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "15", "SubInstance" : "grp_find_clusters_3_5_s_fu_134", "Port" : "grid", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "objects", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_calo_trigger_ref_Pipeline_VITIS_LOOP_156_1_fu_185", "Port" : "objects", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "ht", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_clusters", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_clusters_valid_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_et_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_isolation_et_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_eta_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_phi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_window_size_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_iso_outer_size_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clusters_valid_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_clusters_et_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_clusters_isolation_et_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_clusters_eta_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_clusters_phi_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_clusters_window_size_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_clusters_iso_outer_size_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_find_clusters_3_5_s_fu_134", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "find_clusters_3_5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18939", "EstimateLatencyMax" : "18939",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "grid", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "clusters_et", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_isolation_et", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_eta", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_phi", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_window_size", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_iso_outer_size", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "clusters_valid", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_218_1_VITIS_LOOP_219_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage8", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage8_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_find_clusters_3_5_s_fu_134.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_159", "Parent" : "0", "Child" : ["18", "20", "21"],
		"CDFG" : "select_top_n",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3612", "EstimateLatencyMax" : "113412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "clusters_et", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_isolation_et", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_eta", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_phi", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_window_size", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_iso_outer_size", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clusters_valid", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "num_clusters", "Type" : "None", "Direction" : "I"},
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_et", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_et", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "20", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Port" : "top_clusters_et", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "top_clusters_isolation_et", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_isolation_et", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_isolation_et", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_eta", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_eta", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "20", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Port" : "top_clusters_eta", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_phi", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_phi", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "20", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Port" : "top_clusters_phi", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "top_clusters_window_size", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_window_size", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_window_size", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "top_clusters_iso_outer_size", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_iso_outer_size", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_iso_outer_size", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Port" : "top_clusters_valid", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Port" : "top_clusters_valid", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "20", "SubInstance" : "grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Port" : "top_clusters_valid", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_118_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_159.grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267", "Parent" : "17", "Child" : ["19"],
		"CDFG" : "select_top_n_Pipeline_VITIS_LOOP_108_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_isolation_et", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_window_size", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_iso_outer_size", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_108_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_159.grp_select_top_n_Pipeline_VITIS_LOOP_108_1_fu_267.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_159.grp_select_top_n_Pipeline_VITIS_LOOP_128_3_fu_285", "Parent" : "17",
		"CDFG" : "select_top_n_Pipeline_VITIS_LOOP_128_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "candidate_et", "Type" : "None", "Direction" : "I"},
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "candidate_eta", "Type" : "None", "Direction" : "I"},
			{"Name" : "candidate_phi", "Type" : "None", "Direction" : "I"},
			{"Name" : "j_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "zext_ln128_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7", "ap_ST_fsm_state8", "ap_ST_fsm_state9", "ap_ST_fsm_state10", "ap_ST_fsm_state11"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_159.grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305", "Parent" : "17", "Child" : ["22"],
		"CDFG" : "select_top_n_Pipeline_VITIS_LOOP_131_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_isolation_et", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_window_size", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_iso_outer_size", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_131_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_select_top_n_fu_159.grp_select_top_n_Pipeline_VITIS_LOOP_131_4_fu_305.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2_fu_178", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1802", "EstimateLatencyMax" : "1802",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "grid", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv4_i4_i_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_145_1_VITIS_LOOP_146_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2_fu_178.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calo_trigger_ref_Pipeline_VITIS_LOOP_156_1_fu_185", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "calo_trigger_ref_Pipeline_VITIS_LOOP_156_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "objects", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "top_clusters_valid", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_et", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_isolation_et", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_eta", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_phi", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "top_clusters_window_size", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calo_trigger_ref_Pipeline_VITIS_LOOP_156_1_fu_185.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"}]}


set ArgLastReadFirstWriteLatency {
	calo_trigger_ref {
		grid {Type I LastRead 20 FirstWrite -1}
		seed_threshold {Type I LastRead 0 FirstWrite -1}
		cluster_threshold {Type I LastRead 0 FirstWrite -1}
		objects {Type O LastRead -1 FirstWrite 0}
		ht {Type O LastRead -1 FirstWrite 5}
		num_clusters {Type O LastRead -1 FirstWrite 1}}
	find_clusters_3_5_s {
		grid {Type I LastRead 20 FirstWrite -1}
		seed_threshold {Type I LastRead 0 FirstWrite -1}
		cluster_threshold {Type I LastRead 0 FirstWrite -1}
		clusters_et {Type O LastRead -1 FirstWrite 9}
		clusters_isolation_et {Type O LastRead -1 FirstWrite 21}
		clusters_eta {Type O LastRead -1 FirstWrite 9}
		clusters_phi {Type O LastRead -1 FirstWrite 9}
		clusters_window_size {Type O LastRead -1 FirstWrite 9}
		clusters_iso_outer_size {Type O LastRead -1 FirstWrite 9}
		clusters_valid {Type O LastRead -1 FirstWrite 9}}
	select_top_n {
		clusters_et {Type I LastRead 3 FirstWrite -1}
		clusters_isolation_et {Type I LastRead 3 FirstWrite -1}
		clusters_eta {Type I LastRead 3 FirstWrite -1}
		clusters_phi {Type I LastRead 3 FirstWrite -1}
		clusters_window_size {Type I LastRead 3 FirstWrite -1}
		clusters_iso_outer_size {Type I LastRead 3 FirstWrite -1}
		clusters_valid {Type I LastRead 2 FirstWrite -1}
		num_clusters {Type I LastRead 1 FirstWrite -1}
		top_clusters_et {Type IO LastRead 2 FirstWrite -1}
		top_clusters_isolation_et {Type IO LastRead 0 FirstWrite 0}
		top_clusters_eta {Type IO LastRead 3 FirstWrite -1}
		top_clusters_phi {Type IO LastRead 4 FirstWrite -1}
		top_clusters_window_size {Type IO LastRead 0 FirstWrite 0}
		top_clusters_iso_outer_size {Type IO LastRead 0 FirstWrite 0}
		top_clusters_valid {Type IO LastRead 1 FirstWrite -1}}
	select_top_n_Pipeline_VITIS_LOOP_108_1 {
		top_clusters_et {Type O LastRead -1 FirstWrite 0}
		top_clusters_isolation_et {Type O LastRead -1 FirstWrite 0}
		top_clusters_eta {Type O LastRead -1 FirstWrite 0}
		top_clusters_phi {Type O LastRead -1 FirstWrite 0}
		top_clusters_window_size {Type O LastRead -1 FirstWrite 0}
		top_clusters_iso_outer_size {Type O LastRead -1 FirstWrite 0}
		top_clusters_valid {Type O LastRead -1 FirstWrite 0}}
	select_top_n_Pipeline_VITIS_LOOP_128_3 {
		candidate_et {Type I LastRead 0 FirstWrite -1}
		top_clusters_et {Type I LastRead 2 FirstWrite -1}
		top_clusters_eta {Type I LastRead 3 FirstWrite -1}
		top_clusters_phi {Type I LastRead 4 FirstWrite -1}
		top_clusters_valid {Type I LastRead 1 FirstWrite -1}
		candidate_eta {Type I LastRead 0 FirstWrite -1}
		candidate_phi {Type I LastRead 0 FirstWrite -1}
		j_out {Type O LastRead -1 FirstWrite 2}
		zext_ln128_out {Type O LastRead -1 FirstWrite 3}}
	select_top_n_Pipeline_VITIS_LOOP_131_4 {
		empty {Type I LastRead 0 FirstWrite -1}
		top_clusters_et {Type IO LastRead 0 FirstWrite 1}
		top_clusters_isolation_et {Type IO LastRead 0 FirstWrite 1}
		top_clusters_eta {Type IO LastRead 0 FirstWrite 1}
		top_clusters_phi {Type IO LastRead 0 FirstWrite 1}
		top_clusters_window_size {Type IO LastRead 0 FirstWrite 1}
		top_clusters_iso_outer_size {Type IO LastRead 0 FirstWrite 1}
		top_clusters_valid {Type IO LastRead 0 FirstWrite 1}}
	calo_trigger_ref_Pipeline_VITIS_LOOP_145_1_VITIS_LOOP_146_2 {
		grid {Type I LastRead 0 FirstWrite -1}
		conv4_i4_i_i_out {Type O LastRead -1 FirstWrite 0}}
	calo_trigger_ref_Pipeline_VITIS_LOOP_156_1 {
		objects {Type O LastRead -1 FirstWrite 0}
		top_clusters_valid {Type I LastRead 0 FirstWrite -1}
		top_clusters_et {Type I LastRead 1 FirstWrite -1}
		top_clusters_isolation_et {Type I LastRead 1 FirstWrite -1}
		top_clusters_eta {Type I LastRead 1 FirstWrite -1}
		top_clusters_phi {Type I LastRead 1 FirstWrite -1}
		top_clusters_window_size {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22567", "Max" : "132367"}
	, {"Name" : "Interval", "Min" : "22568", "Max" : "132368"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	grid { ap_memory {  { grid_address0 mem_address 1 11 }  { grid_ce0 mem_ce 1 1 }  { grid_q0 mem_dout 0 12 }  { grid_address1 MemPortADDR2 1 11 }  { grid_ce1 MemPortCE2 1 1 }  { grid_q1 MemPortDOUT2 0 12 } } }
	seed_threshold { ap_none {  { seed_threshold in_data 0 12 } } }
	cluster_threshold { ap_none {  { cluster_threshold in_data 0 20 } } }
	objects { ap_memory {  { objects_address0 mem_address 1 3 }  { objects_ce0 mem_ce 1 1 }  { objects_we0 mem_we 1 1 }  { objects_d0 mem_din 1 89 }  { objects_address1 MemPortADDR2 1 3 }  { objects_ce1 MemPortCE2 1 1 }  { objects_we1 MemPortWE2 1 1 }  { objects_d1 MemPortDIN2 1 89 } } }
	ht { ap_vld {  { ht out_data 1 24 }  { ht_ap_vld out_vld 1 1 } } }
	num_clusters { ap_vld {  { num_clusters out_data 1 32 }  { num_clusters_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
