set moduleName calo_trigger_tower_stream_ref
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
set C_modelName {calo_trigger_tower_stream_ref}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ tower_in int 16 regular {axi_s 0 volatile  { tower_in Data } }  }
	{ em_seed_threshold int 12 regular {axi_slave 0}  }
	{ em_cluster_threshold int 20 regular {axi_slave 0}  }
	{ jet_seed_threshold int 12 regular {axi_slave 0}  }
	{ jet_cluster_threshold int 20 regular {axi_slave 0}  }
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
	{ ht int 24 regular {axi_slave 1}  }
	{ num_em_clusters int 32 regular {axi_slave 1}  }
	{ num_jet_clusters int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "tower_in", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "em_seed_threshold", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 12, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "em_cluster_threshold", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 20, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "jet_seed_threshold", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 12, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "jet_cluster_threshold", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 20, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
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
 	{ "Name" : "ht", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_vld","bitwidth" : 24, "direction" : "WRITEONLY", "offset" : {"out":48}, "offset_end" : {"out":55}} , 
 	{ "Name" : "num_em_clusters", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":64}, "offset_end" : {"out":71}} , 
 	{ "Name" : "num_jet_clusters", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":80}, "offset_end" : {"out":87}} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ tower_in_TDATA sc_in sc_lv 16 signal 0 } 
	{ tower_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ tower_in_TREADY sc_out sc_logic 1 inacc 0 } 
	{ em_objects_0 sc_out sc_lv 89 signal 5 } 
	{ em_objects_0_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ em_objects_1 sc_out sc_lv 89 signal 6 } 
	{ em_objects_1_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ em_objects_2 sc_out sc_lv 89 signal 7 } 
	{ em_objects_2_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ em_objects_3 sc_out sc_lv 89 signal 8 } 
	{ em_objects_3_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ em_objects_4 sc_out sc_lv 89 signal 9 } 
	{ em_objects_4_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ em_objects_5 sc_out sc_lv 89 signal 10 } 
	{ em_objects_5_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ em_objects_6 sc_out sc_lv 89 signal 11 } 
	{ em_objects_6_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ em_objects_7 sc_out sc_lv 89 signal 12 } 
	{ em_objects_7_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ jet_objects_0 sc_out sc_lv 89 signal 13 } 
	{ jet_objects_0_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ jet_objects_1 sc_out sc_lv 89 signal 14 } 
	{ jet_objects_1_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ jet_objects_2 sc_out sc_lv 89 signal 15 } 
	{ jet_objects_2_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ jet_objects_3 sc_out sc_lv 89 signal 16 } 
	{ jet_objects_3_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ jet_objects_4 sc_out sc_lv 89 signal 17 } 
	{ jet_objects_4_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ jet_objects_5 sc_out sc_lv 89 signal 18 } 
	{ jet_objects_5_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ jet_objects_6 sc_out sc_lv 89 signal 19 } 
	{ jet_objects_6_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ jet_objects_7 sc_out sc_lv 89 signal 20 } 
	{ jet_objects_7_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"calo_trigger_tower_stream_ref","role":"start","value":"0","valid_bit":"0"},{"name":"calo_trigger_tower_stream_ref","role":"continue","value":"0","valid_bit":"4"},{"name":"calo_trigger_tower_stream_ref","role":"auto_start","value":"0","valid_bit":"7"},{"name":"em_seed_threshold","role":"data","value":"16"},{"name":"em_cluster_threshold","role":"data","value":"24"},{"name":"jet_seed_threshold","role":"data","value":"32"},{"name":"jet_cluster_threshold","role":"data","value":"40"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"calo_trigger_tower_stream_ref","role":"start","value":"0","valid_bit":"0"},{"name":"calo_trigger_tower_stream_ref","role":"done","value":"0","valid_bit":"1"},{"name":"calo_trigger_tower_stream_ref","role":"idle","value":"0","valid_bit":"2"},{"name":"calo_trigger_tower_stream_ref","role":"ready","value":"0","valid_bit":"3"},{"name":"calo_trigger_tower_stream_ref","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ht","role":"data","value":"48"}, {"name":"ht","role":"valid","value":"52","valid_bit":"0"},{"name":"num_em_clusters","role":"data","value":"64"}, {"name":"num_em_clusters","role":"valid","value":"68","valid_bit":"0"},{"name":"num_jet_clusters","role":"data","value":"80"}, {"name":"num_jet_clusters","role":"valid","value":"84","valid_bit":"0"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "tower_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tower_in", "role": "TDATA" }} , 
 	{ "name": "tower_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "tower_in", "role": "TVALID" }} , 
 	{ "name": "tower_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "tower_in", "role": "TREADY" }} , 
 	{ "name": "em_objects_0", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_0", "role": "default" }} , 
 	{ "name": "em_objects_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_0", "role": "ap_vld" }} , 
 	{ "name": "em_objects_1", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_1", "role": "default" }} , 
 	{ "name": "em_objects_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_1", "role": "ap_vld" }} , 
 	{ "name": "em_objects_2", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_2", "role": "default" }} , 
 	{ "name": "em_objects_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_2", "role": "ap_vld" }} , 
 	{ "name": "em_objects_3", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_3", "role": "default" }} , 
 	{ "name": "em_objects_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_3", "role": "ap_vld" }} , 
 	{ "name": "em_objects_4", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_4", "role": "default" }} , 
 	{ "name": "em_objects_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_4", "role": "ap_vld" }} , 
 	{ "name": "em_objects_5", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_5", "role": "default" }} , 
 	{ "name": "em_objects_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_5", "role": "ap_vld" }} , 
 	{ "name": "em_objects_6", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_6", "role": "default" }} , 
 	{ "name": "em_objects_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_6", "role": "ap_vld" }} , 
 	{ "name": "em_objects_7", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "em_objects_7", "role": "default" }} , 
 	{ "name": "em_objects_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "em_objects_7", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_0", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_0", "role": "default" }} , 
 	{ "name": "jet_objects_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_0", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_1", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_1", "role": "default" }} , 
 	{ "name": "jet_objects_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_1", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_2", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_2", "role": "default" }} , 
 	{ "name": "jet_objects_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_2", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_3", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_3", "role": "default" }} , 
 	{ "name": "jet_objects_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_3", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_4", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_4", "role": "default" }} , 
 	{ "name": "jet_objects_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_4", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_5", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_5", "role": "default" }} , 
 	{ "name": "jet_objects_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_5", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_6", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_6", "role": "default" }} , 
 	{ "name": "jet_objects_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_6", "role": "ap_vld" }} , 
 	{ "name": "jet_objects_7", "direction": "out", "datatype": "sc_lv", "bitwidth":89, "type": "signal", "bundle":{"name": "jet_objects_7", "role": "default" }} , 
 	{ "name": "jet_objects_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jet_objects_7", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "185", "186"],
		"CDFG" : "calo_trigger_tower_stream_ref",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2897", "EstimateLatencyMax" : "17297",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tower_in", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "tower_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "em_objects_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "em_objects_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "em_objects_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "em_objects_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "em_objects_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "em_objects_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "em_objects_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "em_objects_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "jet_objects_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "jet_objects_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "jet_objects_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "jet_objects_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "jet_objects_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "jet_objects_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "jet_objects_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "jet_objects_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "ht", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "ht", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "num_em_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "num_em_clusters", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "num_jet_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_tower_stream_fu_118", "Port" : "num_jet_clusters", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118", "Parent" : "0", "Child" : ["2", "69", "76", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184"],
		"CDFG" : "cluster_sort_build_tower_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2895", "EstimateLatencyMax" : "17295",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "produce_em_jet_cluster_stream_from_towers_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "produce_em_jet_cluster_stream_from_towers_U0"},
			{"ID" : "69", "Name" : "select_top_n_from_stream_fixed_1440_U0"},
			{"ID" : "76", "Name" : "select_top_n_from_stream_fixed_1440_1_U0"},
			{"ID" : "83", "Name" : "build_trigger_objects_U0"},
			{"ID" : "84", "Name" : "build_trigger_objects_2_U0"}],
		"Port" : [
			{"Name" : "tower_in", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "produce_em_jet_cluster_stream_from_towers_U0", "Port" : "tower_in"}]},
			{"Name" : "em_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_0"}]},
			{"Name" : "em_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_1"}]},
			{"Name" : "em_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_2"}]},
			{"Name" : "em_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_3"}]},
			{"Name" : "em_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_4"}]},
			{"Name" : "em_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_5"}]},
			{"Name" : "em_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_6"}]},
			{"Name" : "em_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_7"}]},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_0"}]},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_1"}]},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_2"}]},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_3"}]},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_4"}]},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_5"}]},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_6"}]},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_7"}]},
			{"Name" : "ht", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "produce_em_jet_cluster_stream_from_towers_U0", "Port" : "ht"}]},
			{"Name" : "num_em_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "select_top_n_from_stream_fixed_1440_U0", "Port" : "num_em_clusters"}]},
			{"Name" : "num_jet_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "select_top_n_from_stream_fixed_1440_1_U0", "Port" : "num_jet_clusters"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "12", "63", "64", "65", "66", "67", "68"],
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
					{"ID" : "10", "SubInstance" : "grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2_fu_153", "Port" : "tower_in", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "em_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["69"], "DependentChan" : "85", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170", "Port" : "em_cluster_stream", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "jet_cluster_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["76"], "DependentChan" : "86", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170", "Port" : "jet_cluster_stream", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "ht", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_481_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.linebuf_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.linebuf_1_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.linebuf_2_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.linebuf_3_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.linebuf_4_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.linebuf_5_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.linebuf_6_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2_fu_153", "Parent" : "2", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_486_2_fu_153.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170", "Parent" : "2", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62"],
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
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U13", "Parent" : "12"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U14", "Parent" : "12"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U15", "Parent" : "12"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U16", "Parent" : "12"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U17", "Parent" : "12"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U18", "Parent" : "12"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U19", "Parent" : "12"},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U20", "Parent" : "12"},
	{"ID" : "21", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U21", "Parent" : "12"},
	{"ID" : "22", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U22", "Parent" : "12"},
	{"ID" : "23", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U23", "Parent" : "12"},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U24", "Parent" : "12"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U25", "Parent" : "12"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U26", "Parent" : "12"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U27", "Parent" : "12"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U28", "Parent" : "12"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U29", "Parent" : "12"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U30", "Parent" : "12"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U31", "Parent" : "12"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U32", "Parent" : "12"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U33", "Parent" : "12"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U34", "Parent" : "12"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U35", "Parent" : "12"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U36", "Parent" : "12"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U37", "Parent" : "12"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U38", "Parent" : "12"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U39", "Parent" : "12"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U40", "Parent" : "12"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U41", "Parent" : "12"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U42", "Parent" : "12"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U43", "Parent" : "12"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U44", "Parent" : "12"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U45", "Parent" : "12"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U46", "Parent" : "12"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U47", "Parent" : "12"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U48", "Parent" : "12"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U49", "Parent" : "12"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U50", "Parent" : "12"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U51", "Parent" : "12"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U52", "Parent" : "12"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U53", "Parent" : "12"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U54", "Parent" : "12"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U55", "Parent" : "12"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U56", "Parent" : "12"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U57", "Parent" : "12"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U58", "Parent" : "12"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U59", "Parent" : "12"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U60", "Parent" : "12"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.sparsemux_15_3_12_1_1_U61", "Parent" : "12"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.grp_produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.urem_5ns_4ns_3_9_seq_1_U84", "Parent" : "2"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.urem_5ns_4ns_3_9_seq_1_U85", "Parent" : "2"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.urem_5ns_4ns_3_9_seq_1_U86", "Parent" : "2"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.urem_5ns_4ns_3_9_seq_1_U87", "Parent" : "2"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.urem_5ns_4ns_3_9_seq_1_U88", "Parent" : "2"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.produce_em_jet_cluster_stream_from_towers_U0.urem_5ns_4ns_3_9_seq_1_U89", "Parent" : "2"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_U0", "Parent" : "1", "Child" : ["70", "71", "72", "73", "74", "75"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_select_top_n_from_stream_fixed_1440_U0_U",
		"Port" : [
			{"Name" : "em_cluster_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "85", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "em_cluster_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_em_clusters", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_668_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_20_1_1_U100", "Parent" : "69"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_20_1_1_U101", "Parent" : "69"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_6_1_1_U102", "Parent" : "69"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_6_1_1_U103", "Parent" : "69"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_4_1_1_U104", "Parent" : "69"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_1_1_1_U105", "Parent" : "69"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_1_U0", "Parent" : "1", "Child" : ["77", "78", "79", "80", "81", "82"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_select_top_n_from_stream_fixed_1440_1_U0_U",
		"Port" : [
			{"Name" : "jet_cluster_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "86", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "jet_cluster_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_jet_clusters", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_668_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_20_1_1_U112", "Parent" : "76"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_20_1_1_U113", "Parent" : "76"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_6_1_1_U114", "Parent" : "76"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_6_1_1_U115", "Parent" : "76"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_4_1_1_U116", "Parent" : "76"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_1_1_1_U117", "Parent" : "76"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.build_trigger_objects_U0", "Parent" : "1",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["69"], "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "em_objects_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_7", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.build_trigger_objects_2_U0", "Parent" : "1",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "148", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "152", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "153", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "154", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "155", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "156", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "157", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "158", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "159", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "160", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "161", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "162", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "163", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "164", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "165", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "166", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "167", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "168", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "169", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "170", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "171", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "172", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "173", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "174", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "175", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "176", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "177", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "178", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "179", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "180", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "181", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["76"], "DependentChan" : "182", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_cluster_stream_U", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_cluster_stream_U", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_et_U", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_et_1_U", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_et_2_U", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_et_3_U", "Parent" : "1"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_et_4_U", "Parent" : "1"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_et_5_U", "Parent" : "1"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_et_6_U", "Parent" : "1"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_et_7_U", "Parent" : "1"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_isolation_et_U", "Parent" : "1"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_isolation_et_1_U", "Parent" : "1"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_isolation_et_2_U", "Parent" : "1"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_isolation_et_3_U", "Parent" : "1"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_isolation_et_4_U", "Parent" : "1"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_isolation_et_5_U", "Parent" : "1"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_isolation_et_6_U", "Parent" : "1"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_isolation_et_7_U", "Parent" : "1"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_eta_U", "Parent" : "1"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_eta_1_U", "Parent" : "1"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_eta_2_U", "Parent" : "1"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_eta_3_U", "Parent" : "1"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_eta_4_U", "Parent" : "1"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_eta_5_U", "Parent" : "1"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_eta_6_U", "Parent" : "1"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_eta_7_U", "Parent" : "1"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_phi_U", "Parent" : "1"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_phi_1_U", "Parent" : "1"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_phi_2_U", "Parent" : "1"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_phi_3_U", "Parent" : "1"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_phi_4_U", "Parent" : "1"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_phi_5_U", "Parent" : "1"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_phi_6_U", "Parent" : "1"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_phi_7_U", "Parent" : "1"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_window_size_U", "Parent" : "1"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_window_size_1_U", "Parent" : "1"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_window_size_2_U", "Parent" : "1"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_window_size_3_U", "Parent" : "1"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_window_size_4_U", "Parent" : "1"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_window_size_5_U", "Parent" : "1"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_window_size_6_U", "Parent" : "1"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_window_size_7_U", "Parent" : "1"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_valid_U", "Parent" : "1"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_valid_1_U", "Parent" : "1"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_valid_2_U", "Parent" : "1"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_valid_3_U", "Parent" : "1"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_valid_4_U", "Parent" : "1"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_valid_5_U", "Parent" : "1"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_valid_6_U", "Parent" : "1"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.em_top_clusters_valid_7_U", "Parent" : "1"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_et_U", "Parent" : "1"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_et_1_U", "Parent" : "1"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_et_2_U", "Parent" : "1"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_et_3_U", "Parent" : "1"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_et_4_U", "Parent" : "1"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_et_5_U", "Parent" : "1"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_et_6_U", "Parent" : "1"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_et_7_U", "Parent" : "1"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_isolation_et_U", "Parent" : "1"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_isolation_et_1_U", "Parent" : "1"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_isolation_et_2_U", "Parent" : "1"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_isolation_et_3_U", "Parent" : "1"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_isolation_et_4_U", "Parent" : "1"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_isolation_et_5_U", "Parent" : "1"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_isolation_et_6_U", "Parent" : "1"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_isolation_et_7_U", "Parent" : "1"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_eta_U", "Parent" : "1"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_eta_1_U", "Parent" : "1"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_eta_2_U", "Parent" : "1"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_eta_3_U", "Parent" : "1"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_eta_4_U", "Parent" : "1"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_eta_5_U", "Parent" : "1"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_eta_6_U", "Parent" : "1"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_eta_7_U", "Parent" : "1"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_phi_U", "Parent" : "1"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_phi_1_U", "Parent" : "1"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_phi_2_U", "Parent" : "1"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_phi_3_U", "Parent" : "1"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_phi_4_U", "Parent" : "1"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_phi_5_U", "Parent" : "1"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_phi_6_U", "Parent" : "1"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_phi_7_U", "Parent" : "1"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_window_size_U", "Parent" : "1"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_window_size_1_U", "Parent" : "1"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_window_size_2_U", "Parent" : "1"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_window_size_3_U", "Parent" : "1"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_window_size_4_U", "Parent" : "1"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_window_size_5_U", "Parent" : "1"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_window_size_6_U", "Parent" : "1"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_window_size_7_U", "Parent" : "1"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_valid_U", "Parent" : "1"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_valid_1_U", "Parent" : "1"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_valid_2_U", "Parent" : "1"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_valid_3_U", "Parent" : "1"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_valid_4_U", "Parent" : "1"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_valid_5_U", "Parent" : "1"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_valid_6_U", "Parent" : "1"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.jet_top_clusters_valid_7_U", "Parent" : "1"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.start_for_select_top_n_from_stream_fixed_1440_U0_U", "Parent" : "1"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_tower_stream_fu_118.start_for_select_top_n_from_stream_fixed_1440_1_U0_U", "Parent" : "1"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tower_in_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calo_trigger_tower_stream_ref {
		tower_in {Type I LastRead 0 FirstWrite -1}
		em_seed_threshold {Type I LastRead 1 FirstWrite -1}
		em_cluster_threshold {Type I LastRead 1 FirstWrite -1}
		jet_seed_threshold {Type I LastRead 1 FirstWrite -1}
		jet_cluster_threshold {Type I LastRead 1 FirstWrite -1}
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
		ht {Type O LastRead -1 FirstWrite 1}
		num_em_clusters {Type O LastRead -1 FirstWrite 1}
		num_jet_clusters {Type O LastRead -1 FirstWrite 1}}
	cluster_sort_build_tower_stream {
		tower_in {Type I LastRead 0 FirstWrite -1}
		em_seed_threshold {Type I LastRead 0 FirstWrite -1}
		em_cluster_threshold {Type I LastRead 0 FirstWrite -1}
		jet_seed_threshold {Type I LastRead 0 FirstWrite -1}
		jet_cluster_threshold {Type I LastRead 0 FirstWrite -1}
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
		ht {Type O LastRead -1 FirstWrite 1}
		num_em_clusters {Type O LastRead -1 FirstWrite 1}
		num_jet_clusters {Type O LastRead -1 FirstWrite 1}}
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
		jet_cluster_stream {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "2897", "Max" : "17297"}
	, {"Name" : "Interval", "Min" : "2898", "Max" : "17298"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	tower_in { axis {  { tower_in_TDATA in_data 0 16 }  { tower_in_TVALID in_vld 0 1 }  { tower_in_TREADY in_acc 1 1 } } }
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
