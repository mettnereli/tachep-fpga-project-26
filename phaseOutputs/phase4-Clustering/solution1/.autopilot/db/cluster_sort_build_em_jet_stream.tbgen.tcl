set moduleName cluster_sort_build_em_jet_stream
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {cluster_sort_build_em_jet_stream}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict towers { MEM_WIDTH 12 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ towers int 12 regular {bram 1800 { 1 1 } 1 1 }  }
	{ em_seed_threshold int 12 regular  }
	{ em_cluster_threshold int 20 regular  }
	{ jet_seed_threshold int 12 regular  }
	{ jet_cluster_threshold int 20 regular  }
	{ em_objects_0 int 89 regular {pointer 1}  }
	{ em_objects_1 int 89 regular {pointer 1}  }
	{ em_objects_2 int 89 regular {pointer 1}  }
	{ em_objects_3 int 89 regular {pointer 1}  }
	{ em_objects_4 int 89 regular {pointer 1}  }
	{ em_objects_5 int 89 regular {pointer 1}  }
	{ em_objects_6 int 89 regular {pointer 1}  }
	{ em_objects_7 int 89 regular {pointer 1}  }
	{ jet_objects_0 int 89 regular {pointer 1}  }
	{ jet_objects_1 int 89 regular {pointer 1}  }
	{ jet_objects_2 int 89 regular {pointer 1}  }
	{ jet_objects_3 int 89 regular {pointer 1}  }
	{ jet_objects_4 int 89 regular {pointer 1}  }
	{ jet_objects_5 int 89 regular {pointer 1}  }
	{ jet_objects_6 int 89 regular {pointer 1}  }
	{ jet_objects_7 int 89 regular {pointer 1}  }
	{ num_em_clusters int 32 regular {pointer 1}  }
	{ num_jet_clusters int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "towers", "interface" : "bram", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "em_seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "em_cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "jet_seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "jet_cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "em_objects_0", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "em_objects_1", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "em_objects_2", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "em_objects_3", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "em_objects_4", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "em_objects_5", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "em_objects_6", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "em_objects_7", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_0", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_1", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_2", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_3", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_4", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_5", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_6", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_objects_7", "interface" : "wire", "bitwidth" : 89, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_em_clusters", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "num_jet_clusters", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ towers_Addr_A sc_out sc_lv 32 signal 0 } 
	{ towers_EN_A sc_out sc_logic 1 signal 0 } 
	{ towers_Din_A sc_out sc_lv 16 signal 0 } 
	{ towers_Dout_A sc_in sc_lv 16 signal 0 } 
	{ towers_WEN_A sc_out sc_lv 2 signal 0 } 
	{ towers_Addr_B sc_out sc_lv 32 signal 0 } 
	{ towers_EN_B sc_out sc_logic 1 signal 0 } 
	{ towers_Din_B sc_out sc_lv 16 signal 0 } 
	{ towers_Dout_B sc_in sc_lv 16 signal 0 } 
	{ towers_WEN_B sc_out sc_lv 2 signal 0 } 
	{ em_seed_threshold sc_in sc_lv 12 signal 1 } 
	{ em_cluster_threshold sc_in sc_lv 20 signal 2 } 
	{ jet_seed_threshold sc_in sc_lv 12 signal 3 } 
	{ jet_cluster_threshold sc_in sc_lv 20 signal 4 } 
	{ em_objects_0 sc_out sc_lv 89 signal 5 } 
	{ em_objects_1 sc_out sc_lv 89 signal 6 } 
	{ em_objects_2 sc_out sc_lv 89 signal 7 } 
	{ em_objects_3 sc_out sc_lv 89 signal 8 } 
	{ em_objects_4 sc_out sc_lv 89 signal 9 } 
	{ em_objects_5 sc_out sc_lv 89 signal 10 } 
	{ em_objects_6 sc_out sc_lv 89 signal 11 } 
	{ em_objects_7 sc_out sc_lv 89 signal 12 } 
	{ jet_objects_0 sc_out sc_lv 89 signal 13 } 
	{ jet_objects_1 sc_out sc_lv 89 signal 14 } 
	{ jet_objects_2 sc_out sc_lv 89 signal 15 } 
	{ jet_objects_3 sc_out sc_lv 89 signal 16 } 
	{ jet_objects_4 sc_out sc_lv 89 signal 17 } 
	{ jet_objects_5 sc_out sc_lv 89 signal 18 } 
	{ jet_objects_6 sc_out sc_lv 89 signal 19 } 
	{ jet_objects_7 sc_out sc_lv 89 signal 20 } 
	{ num_em_clusters sc_out sc_lv 32 signal 21 } 
	{ num_jet_clusters sc_out sc_lv 32 signal 22 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ em_seed_threshold_ap_vld sc_in sc_logic 1 invld 1 } 
	{ em_cluster_threshold_ap_vld sc_in sc_logic 1 invld 2 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ jet_seed_threshold_ap_vld sc_in sc_logic 1 invld 3 } 
	{ jet_cluster_threshold_ap_vld sc_in sc_logic 1 invld 4 } 
	{ num_em_clusters_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ num_jet_clusters_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ em_objects_0_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ em_objects_1_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ em_objects_2_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ em_objects_3_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ em_objects_4_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ em_objects_5_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ em_objects_6_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ em_objects_7_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ jet_objects_0_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ jet_objects_1_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ jet_objects_2_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ jet_objects_3_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ jet_objects_4_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ jet_objects_5_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ jet_objects_6_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ jet_objects_7_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "towers_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "towers", "role": "Addr_A" }} , 
 	{ "name": "towers_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "EN_A" }} , 
 	{ "name": "towers_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Din_A" }} , 
 	{ "name": "towers_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Dout_A" }} , 
 	{ "name": "towers_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "towers", "role": "WEN_A" }} , 
 	{ "name": "towers_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "towers", "role": "Addr_B" }} , 
 	{ "name": "towers_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "EN_B" }} , 
 	{ "name": "towers_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Din_B" }} , 
 	{ "name": "towers_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Dout_B" }} , 
 	{ "name": "towers_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "towers", "role": "WEN_B" }} , 
 	{ "name": "em_seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "em_seed_threshold", "role": "default" }} , 
 	{ "name": "em_cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "em_cluster_threshold", "role": "default" }} , 
 	{ "name": "jet_seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "jet_seed_threshold", "role": "default" }} , 
 	{ "name": "jet_cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "jet_cluster_threshold", "role": "default" }} , 
 	{ "name": "em_objects_0", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_0", "role": "default" }} , 
 	{ "name": "em_objects_1", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_1", "role": "default" }} , 
 	{ "name": "em_objects_2", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_2", "role": "default" }} , 
 	{ "name": "em_objects_3", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_3", "role": "default" }} , 
 	{ "name": "em_objects_4", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_4", "role": "default" }} , 
 	{ "name": "em_objects_5", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_5", "role": "default" }} , 
 	{ "name": "em_objects_6", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_6", "role": "default" }} , 
 	{ "name": "em_objects_7", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_7", "role": "default" }} , 
 	{ "name": "jet_objects_0", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_0", "role": "default" }} , 
 	{ "name": "jet_objects_1", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_1", "role": "default" }} , 
 	{ "name": "jet_objects_2", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_2", "role": "default" }} , 
 	{ "name": "jet_objects_3", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_3", "role": "default" }} , 
 	{ "name": "jet_objects_4", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_4", "role": "default" }} , 
 	{ "name": "jet_objects_5", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_5", "role": "default" }} , 
 	{ "name": "jet_objects_6", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_6", "role": "default" }} , 
 	{ "name": "jet_objects_7", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_7", "role": "default" }} , 
 	{ "name": "num_em_clusters", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_em_clusters", "role": "default" }} , 
 	{ "name": "num_jet_clusters", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_jet_clusters", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "em_seed_threshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_seed_threshold", "role": "ap_vld" }} , 
 	{ "name": "em_cluster_threshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "em_cluster_threshold", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "jet_seed_threshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "jet_seed_threshold", "role": "ap_vld" }} , 
 	{ "name": "jet_cluster_threshold_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "jet_cluster_threshold", "role": "ap_vld" }} , 
 	{ "name": "num_em_clusters_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_em_clusters", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "num_jet_clusters_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "num_jet_clusters", "role": "ap_vld" }} , 
 	{ "name": "em_objects_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_0", "role": "ap_vld" }} , 
 	{ "name": "em_objects_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_1", "role": "ap_vld" }} , 
 	{ "name": "em_objects_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_2", "role": "ap_vld" }} , 
 	{ "name": "em_objects_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_3", "role": "ap_vld" }} , 
 	{ "name": "em_objects_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_4", "role": "ap_vld" }} , 
 	{ "name": "em_objects_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_5", "role": "ap_vld" }} , 
 	{ "name": "em_objects_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_6", "role": "ap_vld" }} , 
 	{ "name": "em_objects_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_7", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_0", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_1", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_2", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_3", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_4", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_5", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_6", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_7", "role": "ap_vld" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "12", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120"],
		"CDFG" : "cluster_sort_build_em_jet_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70562", "EstimateLatencyMax" : "70575",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "produce_em_cluster_stream_U0"},
			{"ID" : "3", "Name" : "produce_jet_cluster_stream_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "select_top_n_from_stream_fixed_1440_U0"},
			{"ID" : "12", "Name" : "select_top_n_from_stream_fixed_1440_1_U0"},
			{"ID" : "19", "Name" : "build_trigger_objects_U0"},
			{"ID" : "20", "Name" : "build_trigger_objects_2_U0"}],
		"Port" : [
			{"Name" : "towers", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "produce_em_cluster_stream_U0", "Port" : "towers"},
					{"ID" : "3", "SubInstance" : "produce_jet_cluster_stream_U0", "Port" : "towers"}]},
			{"Name" : "em_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_0"}]},
			{"Name" : "em_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_1"}]},
			{"Name" : "em_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_2"}]},
			{"Name" : "em_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_3"}]},
			{"Name" : "em_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_4"}]},
			{"Name" : "em_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_5"}]},
			{"Name" : "em_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_6"}]},
			{"Name" : "em_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_7"}]},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_0"}]},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_1"}]},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_2"}]},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_3"}]},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_4"}]},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_5"}]},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_6"}]},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_7"}]},
			{"Name" : "num_em_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "select_top_n_from_stream_fixed_1440_U0", "Port" : "num_em_clusters"}]},
			{"Name" : "num_jet_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "select_top_n_from_stream_fixed_1440_1_U0", "Port" : "num_jet_clusters"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.produce_em_cluster_stream_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "produce_em_cluster_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70562", "EstimateLatencyMax" : "70562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "towers", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "21", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "em_cluster_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_328_1_VITIS_LOOP_329_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "49", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.produce_em_cluster_stream_U0.flow_control_loop_pipe_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.produce_jet_cluster_stream_U0", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "produce_jet_cluster_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70562", "EstimateLatencyMax" : "70562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "towers", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["12"], "DependentChan" : "22", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "jet_cluster_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_375_1_VITIS_LOOP_376_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "49", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.produce_jet_cluster_stream_U0.flow_control_loop_pipe_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10", "11"],
		"CDFG" : "select_top_n_from_stream_fixed_1440_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2881", "EstimateLatencyMax" : "17281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_select_top_n_from_stream_fixed_1440_U0_U",
		"Port" : [
			{"Name" : "em_cluster_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "21", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "em_cluster_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_em_clusters", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_467_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_20_1_1_U7", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_20_1_1_U8", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_6_1_1_U9", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_6_1_1_U10", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_4_1_1_U11", "Parent" : "5"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_1_1_1_U12", "Parent" : "5"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_1_U0", "Parent" : "0", "Child" : ["13", "14", "15", "16", "17", "18"],
		"CDFG" : "select_top_n_from_stream_fixed_1440_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2881", "EstimateLatencyMax" : "17281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_select_top_n_from_stream_fixed_1440_1_U0_U",
		"Port" : [
			{"Name" : "jet_cluster_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "22", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "jet_cluster_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_jet_clusters", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_467_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_20_1_1_U19", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_20_1_1_U20", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_6_1_1_U21", "Parent" : "12"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_6_1_1_U22", "Parent" : "12"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_4_1_1_U23", "Parent" : "12"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_1_1_1_U24", "Parent" : "12"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.build_trigger_objects_U0", "Parent" : "0",
		"CDFG" : "build_trigger_objects",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "36", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "42", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "54", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "em_objects_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_7", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.build_trigger_objects_2_U0", "Parent" : "0",
		"CDFG" : "build_trigger_objects_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_cluster_stream_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_cluster_stream_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_et_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_et_1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_et_2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_et_3_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_et_4_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_et_5_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_et_6_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_et_7_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_isolation_et_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_isolation_et_1_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_isolation_et_2_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_isolation_et_3_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_isolation_et_4_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_isolation_et_5_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_isolation_et_6_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_isolation_et_7_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_eta_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_eta_1_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_eta_2_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_eta_3_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_eta_4_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_eta_5_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_eta_6_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_eta_7_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_phi_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_phi_1_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_phi_2_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_phi_3_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_phi_4_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_phi_5_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_phi_6_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_phi_7_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_window_size_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_window_size_1_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_window_size_2_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_window_size_3_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_window_size_4_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_window_size_5_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_window_size_6_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_window_size_7_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_valid_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_valid_1_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_valid_2_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_valid_3_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_valid_4_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_valid_5_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_valid_6_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.em_top_clusters_valid_7_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_et_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_et_1_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_et_2_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_et_3_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_et_4_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_et_5_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_et_6_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_et_7_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_isolation_et_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_isolation_et_1_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_isolation_et_2_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_isolation_et_3_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_isolation_et_4_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_isolation_et_5_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_isolation_et_6_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_isolation_et_7_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_eta_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_eta_1_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_eta_2_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_eta_3_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_eta_4_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_eta_5_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_eta_6_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_eta_7_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_phi_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_phi_1_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_phi_2_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_phi_3_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_phi_4_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_phi_5_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_phi_6_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_phi_7_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_window_size_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_window_size_1_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_window_size_2_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_window_size_3_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_window_size_4_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_window_size_5_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_window_size_6_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_window_size_7_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_valid_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_valid_1_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_valid_2_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_valid_3_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_valid_4_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_valid_5_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_valid_6_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jet_top_clusters_valid_7_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_select_top_n_from_stream_fixed_1440_U0_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_select_top_n_from_stream_fixed_1440_1_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cluster_sort_build_em_jet_stream {
		towers {Type I LastRead 48 FirstWrite -1}
		em_seed_threshold {Type I LastRead 0 FirstWrite -1}
		em_cluster_threshold {Type I LastRead 0 FirstWrite -1}
		jet_seed_threshold {Type I LastRead 2 FirstWrite -1}
		jet_cluster_threshold {Type I LastRead 2 FirstWrite -1}
		em_objects_0 {Type O LastRead -1 FirstWrite 0}
		em_objects_1 {Type O LastRead -1 FirstWrite 0}
		em_objects_2 {Type O LastRead -1 FirstWrite 0}
		em_objects_3 {Type O LastRead -1 FirstWrite 0}
		em_objects_4 {Type O LastRead -1 FirstWrite 0}
		em_objects_5 {Type O LastRead -1 FirstWrite 0}
		em_objects_6 {Type O LastRead -1 FirstWrite 0}
		em_objects_7 {Type O LastRead -1 FirstWrite 0}
		jet_objects_0 {Type O LastRead -1 FirstWrite 0}
		jet_objects_1 {Type O LastRead -1 FirstWrite 0}
		jet_objects_2 {Type O LastRead -1 FirstWrite 0}
		jet_objects_3 {Type O LastRead -1 FirstWrite 0}
		jet_objects_4 {Type O LastRead -1 FirstWrite 0}
		jet_objects_5 {Type O LastRead -1 FirstWrite 0}
		jet_objects_6 {Type O LastRead -1 FirstWrite 0}
		jet_objects_7 {Type O LastRead -1 FirstWrite 0}
		num_em_clusters {Type O LastRead -1 FirstWrite 1}
		num_jet_clusters {Type O LastRead -1 FirstWrite 1}}
	produce_em_cluster_stream {
		towers {Type I LastRead 48 FirstWrite -1}
		seed_threshold {Type I LastRead 0 FirstWrite -1}
		cluster_threshold {Type I LastRead 0 FirstWrite -1}
		em_cluster_stream {Type O LastRead -1 FirstWrite 49}}
	produce_jet_cluster_stream {
		towers {Type I LastRead 48 FirstWrite -1}
		seed_threshold {Type I LastRead 0 FirstWrite -1}
		cluster_threshold {Type I LastRead 0 FirstWrite -1}
		jet_cluster_stream {Type O LastRead -1 FirstWrite 49}}
	select_top_n_from_stream_fixed_1440_s {
		em_cluster_stream {Type I LastRead 1 FirstWrite -1}
		num_em_clusters {Type O LastRead -1 FirstWrite 1}}
	select_top_n_from_stream_fixed_1440_1 {
		jet_cluster_stream {Type I LastRead 1 FirstWrite -1}
		num_jet_clusters {Type O LastRead -1 FirstWrite 1}}
	build_trigger_objects {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		em_objects_0 {Type O LastRead -1 FirstWrite 0}
		em_objects_1 {Type O LastRead -1 FirstWrite 0}
		em_objects_2 {Type O LastRead -1 FirstWrite 0}
		em_objects_3 {Type O LastRead -1 FirstWrite 0}
		em_objects_4 {Type O LastRead -1 FirstWrite 0}
		em_objects_5 {Type O LastRead -1 FirstWrite 0}
		em_objects_6 {Type O LastRead -1 FirstWrite 0}
		em_objects_7 {Type O LastRead -1 FirstWrite 0}}
	build_trigger_objects_2 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		jet_objects_0 {Type O LastRead -1 FirstWrite 0}
		jet_objects_1 {Type O LastRead -1 FirstWrite 0}
		jet_objects_2 {Type O LastRead -1 FirstWrite 0}
		jet_objects_3 {Type O LastRead -1 FirstWrite 0}
		jet_objects_4 {Type O LastRead -1 FirstWrite 0}
		jet_objects_5 {Type O LastRead -1 FirstWrite 0}
		jet_objects_6 {Type O LastRead -1 FirstWrite 0}
		jet_objects_7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "70562", "Max" : "70575"}
	, {"Name" : "Interval", "Min" : "70561", "Max" : "70561"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	towers { bram {  { towers_Addr_A MemPortADDR2 1 32 }  { towers_EN_A MemPortCE2 1 1 }  { towers_Din_A MemPortDIN2 1 16 }  { towers_Dout_A MemPortDOUT2 0 16 }  { towers_WEN_A MemPortWE2 1 2 }  { towers_Addr_B MemPortADDR2 1 32 }  { towers_EN_B MemPortCE2 1 1 }  { towers_Din_B MemPortDIN2 1 16 }  { towers_Dout_B MemPortDOUT2 0 16 }  { towers_WEN_B MemPortWE2 1 2 } } }
	em_seed_threshold { ap_none {  { em_seed_threshold in_data 0 12 }  { em_seed_threshold_ap_vld in_vld 0 1 } } }
	em_cluster_threshold { ap_none {  { em_cluster_threshold in_data 0 20 }  { em_cluster_threshold_ap_vld in_vld 0 1 } } }
	jet_seed_threshold { ap_none {  { jet_seed_threshold in_data 0 12 }  { jet_seed_threshold_ap_vld in_vld 0 1 } } }
	jet_cluster_threshold { ap_none {  { jet_cluster_threshold in_data 0 20 }  { jet_cluster_threshold_ap_vld in_vld 0 1 } } }
	em_objects_0 { ap_vld {  { em_objects_0 out_data 1 89 }  { em_objects_0_ap_vld out_vld 1 1 } } }
	em_objects_1 { ap_vld {  { em_objects_1 out_data 1 89 }  { em_objects_1_ap_vld out_vld 1 1 } } }
	em_objects_2 { ap_vld {  { em_objects_2 out_data 1 89 }  { em_objects_2_ap_vld out_vld 1 1 } } }
	em_objects_3 { ap_vld {  { em_objects_3 out_data 1 89 }  { em_objects_3_ap_vld out_vld 1 1 } } }
	em_objects_4 { ap_vld {  { em_objects_4 out_data 1 89 }  { em_objects_4_ap_vld out_vld 1 1 } } }
	em_objects_5 { ap_vld {  { em_objects_5 out_data 1 89 }  { em_objects_5_ap_vld out_vld 1 1 } } }
	em_objects_6 { ap_vld {  { em_objects_6 out_data 1 89 }  { em_objects_6_ap_vld out_vld 1 1 } } }
	em_objects_7 { ap_vld {  { em_objects_7 out_data 1 89 }  { em_objects_7_ap_vld out_vld 1 1 } } }
	jet_objects_0 { ap_vld {  { jet_objects_0 out_data 1 89 }  { jet_objects_0_ap_vld out_vld 1 1 } } }
	jet_objects_1 { ap_vld {  { jet_objects_1 out_data 1 89 }  { jet_objects_1_ap_vld out_vld 1 1 } } }
	jet_objects_2 { ap_vld {  { jet_objects_2 out_data 1 89 }  { jet_objects_2_ap_vld out_vld 1 1 } } }
	jet_objects_3 { ap_vld {  { jet_objects_3 out_data 1 89 }  { jet_objects_3_ap_vld out_vld 1 1 } } }
	jet_objects_4 { ap_vld {  { jet_objects_4 out_data 1 89 }  { jet_objects_4_ap_vld out_vld 1 1 } } }
	jet_objects_5 { ap_vld {  { jet_objects_5 out_data 1 89 }  { jet_objects_5_ap_vld out_vld 1 1 } } }
	jet_objects_6 { ap_vld {  { jet_objects_6 out_data 1 89 }  { jet_objects_6_ap_vld out_vld 1 1 } } }
	jet_objects_7 { ap_vld {  { jet_objects_7 out_data 1 89 }  { jet_objects_7_ap_vld out_vld 1 1 } } }
	num_em_clusters { ap_vld {  { num_em_clusters out_data 1 32 }  { num_em_clusters_ap_vld out_vld 1 1 } } }
	num_jet_clusters { ap_vld {  { num_jet_clusters out_data 1 32 }  { num_jet_clusters_ap_vld out_vld 1 1 } } }
}
