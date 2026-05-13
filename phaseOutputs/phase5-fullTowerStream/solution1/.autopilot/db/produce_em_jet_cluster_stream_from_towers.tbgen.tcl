set moduleName produce_em_jet_cluster_stream_from_towers
set isTopModule 0
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
set C_modelName {produce_em_jet_cluster_stream_from_towers}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ tower_in int 16 regular {axi_s 0 volatile  { tower_in Data } }  }
	{ em_seed_threshold int 12 regular  }
	{ em_cluster_threshold int 20 regular  }
	{ jet_seed_threshold int 12 regular  }
	{ jet_cluster_threshold int 20 regular  }
	{ em_cluster_stream int 61 regular {fifo 1 volatile }  }
	{ jet_cluster_stream int 61 regular {fifo 1 volatile }  }
	{ ht int 24 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tower_in", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "em_seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "em_cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "jet_seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "jet_cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "em_cluster_stream", "interface" : "fifo", "bitwidth" : 61, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_cluster_stream", "interface" : "fifo", "bitwidth" : 61, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ht", "interface" : "wire", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ tower_in_TDATA sc_in sc_lv 16 signal 0 } 
	{ tower_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ tower_in_TREADY sc_out sc_logic 1 inacc 0 } 
	{ em_seed_threshold sc_in sc_lv 12 signal 1 } 
	{ em_cluster_threshold sc_in sc_lv 20 signal 2 } 
	{ jet_seed_threshold sc_in sc_lv 12 signal 3 } 
	{ jet_cluster_threshold sc_in sc_lv 20 signal 4 } 
	{ em_cluster_stream_din sc_out sc_lv 61 signal 5 } 
	{ em_cluster_stream_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ em_cluster_stream_fifo_cap sc_in sc_lv 7 signal 5 } 
	{ em_cluster_stream_full_n sc_in sc_logic 1 signal 5 } 
	{ em_cluster_stream_write sc_out sc_logic 1 signal 5 } 
	{ jet_cluster_stream_din sc_out sc_lv 61 signal 6 } 
	{ jet_cluster_stream_num_data_valid sc_in sc_lv 7 signal 6 } 
	{ jet_cluster_stream_fifo_cap sc_in sc_lv 7 signal 6 } 
	{ jet_cluster_stream_full_n sc_in sc_logic 1 signal 6 } 
	{ jet_cluster_stream_write sc_out sc_logic 1 signal 6 } 
	{ ht sc_out sc_lv 24 signal 7 } 
	{ ht_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "tower_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tower_in", "role": "TDATA" }} , 
 	{ "name": "tower_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tower_in", "role": "TVALID" }} , 
 	{ "name": "tower_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "tower_in", "role": "TREADY" }} , 
 	{ "name": "em_seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "em_seed_threshold", "role": "default" }} , 
 	{ "name": "em_cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "em_cluster_threshold", "role": "default" }} , 
 	{ "name": "jet_seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "jet_seed_threshold", "role": "default" }} , 
 	{ "name": "jet_cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "jet_cluster_threshold", "role": "default" }} , 
 	{ "name": "em_cluster_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":61, "type": "signal", "bundle":{"name": "em_cluster_stream", "role": "din" }} , 
 	{ "name": "em_cluster_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "em_cluster_stream", "role": "num_data_valid" }} , 
 	{ "name": "em_cluster_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "em_cluster_stream", "role": "fifo_cap" }} , 
 	{ "name": "em_cluster_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "em_cluster_stream", "role": "full_n" }} , 
 	{ "name": "em_cluster_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "em_cluster_stream", "role": "write" }} , 
 	{ "name": "jet_cluster_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":61, "type": "signal", "bundle":{"name": "jet_cluster_stream", "role": "din" }} , 
 	{ "name": "jet_cluster_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "jet_cluster_stream", "role": "num_data_valid" }} , 
 	{ "name": "jet_cluster_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "jet_cluster_stream", "role": "fifo_cap" }} , 
 	{ "name": "jet_cluster_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "jet_cluster_stream", "role": "full_n" }} , 
 	{ "name": "jet_cluster_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "jet_cluster_stream", "role": "write" }} , 
 	{ "name": "ht", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "ht", "role": "default" }} , 
 	{ "name": "ht_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ht", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "10", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "produce_em_jet_cluster_stream_from_towers",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1981", "EstimateLatencyMax" : "4081",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tower_in", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2_fu_153", "Port" : "tower_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170", "Port" : "em_cluster_stream", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "jet_cluster_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170", "Port" : "jet_cluster_stream", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "ht", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_481_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linebuf_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2_fu_153", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "62",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "local_ht", "Type" : "None", "Direction" : "I"},
			{"Name" : "linebuf_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "linebuf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tower_in", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "tower_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_ht_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_486_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2_fu_153.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62", "EstimateLatencyMax" : "62",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "linebuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linebuf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linebuf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linebuf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linebuf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linebuf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "linebuf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "center_eta", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "em_cluster_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "jet_cluster_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jet_cluster_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_500_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U13", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U14", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U15", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U16", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U17", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U18", "Parent" : "10"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U19", "Parent" : "10"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U20", "Parent" : "10"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U21", "Parent" : "10"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U22", "Parent" : "10"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U23", "Parent" : "10"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U24", "Parent" : "10"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U25", "Parent" : "10"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U26", "Parent" : "10"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U27", "Parent" : "10"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U28", "Parent" : "10"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U29", "Parent" : "10"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U30", "Parent" : "10"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U31", "Parent" : "10"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U32", "Parent" : "10"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U33", "Parent" : "10"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U34", "Parent" : "10"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U35", "Parent" : "10"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U36", "Parent" : "10"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U37", "Parent" : "10"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U38", "Parent" : "10"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U39", "Parent" : "10"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U40", "Parent" : "10"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U41", "Parent" : "10"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U42", "Parent" : "10"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U43", "Parent" : "10"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U44", "Parent" : "10"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U45", "Parent" : "10"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U46", "Parent" : "10"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U47", "Parent" : "10"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U48", "Parent" : "10"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U49", "Parent" : "10"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U50", "Parent" : "10"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U51", "Parent" : "10"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U52", "Parent" : "10"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U53", "Parent" : "10"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U54", "Parent" : "10"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U55", "Parent" : "10"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U56", "Parent" : "10"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U57", "Parent" : "10"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U58", "Parent" : "10"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U59", "Parent" : "10"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U60", "Parent" : "10"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U61", "Parent" : "10"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_5ns_4ns_3_9_seq_1_U84", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_5ns_4ns_3_9_seq_1_U85", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_5ns_4ns_3_9_seq_1_U86", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_5ns_4ns_3_9_seq_1_U87", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_5ns_4ns_3_9_seq_1_U88", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_5ns_4ns_3_9_seq_1_U89", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	produce_em_jet_cluster_stream_from_towers {
		tower_in {Type I LastRead 0 FirstWrite -1}
		em_seed_threshold {Type I LastRead 0 FirstWrite -1}
		em_cluster_threshold {Type I LastRead 0 FirstWrite -1}
		jet_seed_threshold {Type I LastRead 0 FirstWrite -1}
		jet_cluster_threshold {Type I LastRead 0 FirstWrite -1}
		em_cluster_stream {Type O LastRead -1 FirstWrite 1}
		jet_cluster_stream {Type O LastRead -1 FirstWrite 1}
		ht {Type O LastRead -1 FirstWrite 1}}
	produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2 {
		local_ht {Type I LastRead 0 FirstWrite -1}
		linebuf_6 {Type O LastRead -1 FirstWrite 0}
		linebuf_5 {Type O LastRead -1 FirstWrite 0}
		linebuf_4 {Type O LastRead -1 FirstWrite 0}
		linebuf_3 {Type O LastRead -1 FirstWrite 0}
		linebuf_2 {Type O LastRead -1 FirstWrite 0}
		linebuf_1 {Type O LastRead -1 FirstWrite 0}
		linebuf {Type O LastRead -1 FirstWrite 0}
		tower_in {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		local_ht_1_out {Type O LastRead -1 FirstWrite 0}}
	produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3 {
		linebuf {Type I LastRead 1 FirstWrite -1}
		linebuf_1 {Type I LastRead 1 FirstWrite -1}
		linebuf_2 {Type I LastRead 1 FirstWrite -1}
		linebuf_3 {Type I LastRead 1 FirstWrite -1}
		linebuf_4 {Type I LastRead 1 FirstWrite -1}
		linebuf_5 {Type I LastRead 1 FirstWrite -1}
		linebuf_6 {Type I LastRead 1 FirstWrite -1}
		empty_19 {Type I LastRead 0 FirstWrite -1}
		empty_20 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		em_seed_threshold {Type I LastRead 0 FirstWrite -1}
		em_cluster_threshold {Type I LastRead 0 FirstWrite -1}
		jet_seed_threshold {Type I LastRead 0 FirstWrite -1}
		jet_cluster_threshold {Type I LastRead 0 FirstWrite -1}
		center_eta {Type I LastRead 0 FirstWrite -1}
		em_cluster_stream {Type O LastRead -1 FirstWrite 1}
		jet_cluster_stream {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1981", "Max" : "4081"}
	, {"Name" : "Interval", "Min" : "1981", "Max" : "4081"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tower_in { axis {  { tower_in_TDATA in_data 0 16 }  { tower_in_TVALID in_vld 0 1 }  { tower_in_TREADY in_acc 1 1 } } }
	em_seed_threshold { ap_none {  { em_seed_threshold in_data 0 12 } } }
	em_cluster_threshold { ap_none {  { em_cluster_threshold in_data 0 20 } } }
	jet_seed_threshold { ap_none {  { jet_seed_threshold in_data 0 12 } } }
	jet_cluster_threshold { ap_none {  { jet_cluster_threshold in_data 0 20 } } }
	em_cluster_stream { ap_fifo {  { em_cluster_stream_din fifo_data_in 1 61 }  { em_cluster_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { em_cluster_stream_fifo_cap fifo_update 0 7 }  { em_cluster_stream_full_n fifo_status 0 1 }  { em_cluster_stream_write fifo_port_we 1 1 } } }
	jet_cluster_stream { ap_fifo {  { jet_cluster_stream_din fifo_data_in 1 61 }  { jet_cluster_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { jet_cluster_stream_fifo_cap fifo_update 0 7 }  { jet_cluster_stream_full_n fifo_status 0 1 }  { jet_cluster_stream_write fifo_port_we 1 1 } } }
	ht { ap_vld {  { ht out_data 1 24 }  { ht_ap_vld out_vld 1 1 } } }
}
