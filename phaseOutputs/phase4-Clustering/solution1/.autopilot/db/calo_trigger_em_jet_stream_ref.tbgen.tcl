set moduleName calo_trigger_em_jet_stream_ref
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
set C_modelName {calo_trigger_em_jet_stream_ref}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict towers { MEM_WIDTH 12 MEM_SIZE 3600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ towers int 12 regular {bram 1800 { 1 1 } 1 1 }  }
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
	{ "Name" : "towers", "interface" : "bram", "bitwidth" : 12, "direction" : "READONLY"} , 
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
set portNum 66
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ towers_Addr_A sc_out sc_lv 32 signal 0 } 
	{ towers_EN_A sc_out sc_logic 1 signal 0 } 
	{ towers_WEN_A sc_out sc_lv 2 signal 0 } 
	{ towers_Din_A sc_out sc_lv 16 signal 0 } 
	{ towers_Dout_A sc_in sc_lv 16 signal 0 } 
	{ towers_Clk_A sc_out sc_logic 1 signal 0 } 
	{ towers_Rst_A sc_out sc_logic 1 signal 0 } 
	{ towers_Addr_B sc_out sc_lv 32 signal 0 } 
	{ towers_EN_B sc_out sc_logic 1 signal 0 } 
	{ towers_WEN_B sc_out sc_lv 2 signal 0 } 
	{ towers_Din_B sc_out sc_lv 16 signal 0 } 
	{ towers_Dout_B sc_in sc_lv 16 signal 0 } 
	{ towers_Clk_B sc_out sc_logic 1 signal 0 } 
	{ towers_Rst_B sc_out sc_logic 1 signal 0 } 
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
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"calo_trigger_em_jet_stream_ref","role":"start","value":"0","valid_bit":"0"},{"name":"calo_trigger_em_jet_stream_ref","role":"continue","value":"0","valid_bit":"4"},{"name":"calo_trigger_em_jet_stream_ref","role":"auto_start","value":"0","valid_bit":"7"},{"name":"em_seed_threshold","role":"data","value":"16"},{"name":"em_cluster_threshold","role":"data","value":"24"},{"name":"jet_seed_threshold","role":"data","value":"32"},{"name":"jet_cluster_threshold","role":"data","value":"40"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"calo_trigger_em_jet_stream_ref","role":"start","value":"0","valid_bit":"0"},{"name":"calo_trigger_em_jet_stream_ref","role":"done","value":"0","valid_bit":"1"},{"name":"calo_trigger_em_jet_stream_ref","role":"idle","value":"0","valid_bit":"2"},{"name":"calo_trigger_em_jet_stream_ref","role":"ready","value":"0","valid_bit":"3"},{"name":"calo_trigger_em_jet_stream_ref","role":"auto_start","value":"0","valid_bit":"7"},{"name":"ht","role":"data","value":"48"}, {"name":"ht","role":"valid","value":"52","valid_bit":"0"},{"name":"num_em_clusters","role":"data","value":"64"}, {"name":"num_em_clusters","role":"valid","value":"68","valid_bit":"0"},{"name":"num_jet_clusters","role":"data","value":"80"}, {"name":"num_jet_clusters","role":"valid","value":"84","valid_bit":"0"}] },
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
 	{ "name": "towers_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "towers", "role": "Addr_A" }} , 
 	{ "name": "towers_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "EN_A" }} , 
 	{ "name": "towers_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "towers", "role": "WEN_A" }} , 
 	{ "name": "towers_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Din_A" }} , 
 	{ "name": "towers_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Dout_A" }} , 
 	{ "name": "towers_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "Clk_A" }} , 
 	{ "name": "towers_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "Rst_A" }} , 
 	{ "name": "towers_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "towers", "role": "Addr_B" }} , 
 	{ "name": "towers_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "EN_B" }} , 
 	{ "name": "towers_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "towers", "role": "WEN_B" }} , 
 	{ "name": "towers_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Din_B" }} , 
 	{ "name": "towers_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "towers", "role": "Dout_B" }} , 
 	{ "name": "towers_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "Clk_B" }} , 
 	{ "name": "towers_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "towers", "role": "Rst_B" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "122"],
		"CDFG" : "calo_trigger_em_jet_stream_ref",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72365", "EstimateLatencyMax" : "72378",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "towers", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "towers", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "em_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "em_objects_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "em_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "em_objects_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "em_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "em_objects_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "em_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "em_objects_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "em_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "em_objects_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "em_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "em_objects_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "em_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "em_objects_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "em_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "em_objects_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "jet_objects_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "jet_objects_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "jet_objects_2", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "jet_objects_3", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "jet_objects_4", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "jet_objects_5", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "jet_objects_6", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "jet_objects_7", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "ht", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "num_em_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "num_em_clusters", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "num_jet_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cluster_sort_build_em_jet_stream_fu_205", "Port" : "num_jet_clusters", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "HT_ETA_HT_PHI", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state4"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205", "Parent" : "0", "Child" : ["2", "4", "6", "13", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121"],
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
			{"ID" : "2", "Name" : "produce_em_cluster_stream_U0"},
			{"ID" : "4", "Name" : "produce_jet_cluster_stream_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "select_top_n_from_stream_fixed_1440_U0"},
			{"ID" : "13", "Name" : "select_top_n_from_stream_fixed_1440_1_U0"},
			{"ID" : "20", "Name" : "build_trigger_objects_U0"},
			{"ID" : "21", "Name" : "build_trigger_objects_2_U0"}],
		"Port" : [
			{"Name" : "towers", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "produce_em_cluster_stream_U0", "Port" : "towers"},
					{"ID" : "4", "SubInstance" : "produce_jet_cluster_stream_U0", "Port" : "towers"}]},
			{"Name" : "em_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_seed_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "jet_cluster_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "em_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_0"}]},
			{"Name" : "em_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_1"}]},
			{"Name" : "em_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_2"}]},
			{"Name" : "em_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_3"}]},
			{"Name" : "em_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_4"}]},
			{"Name" : "em_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_5"}]},
			{"Name" : "em_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_6"}]},
			{"Name" : "em_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "build_trigger_objects_U0", "Port" : "em_objects_7"}]},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_0"}]},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_1"}]},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_2"}]},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_3"}]},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_4"}]},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_5"}]},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_6"}]},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "build_trigger_objects_2_U0", "Port" : "jet_objects_7"}]},
			{"Name" : "num_em_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "select_top_n_from_stream_fixed_1440_U0", "Port" : "num_em_clusters"}]},
			{"Name" : "num_jet_clusters", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "select_top_n_from_stream_fixed_1440_1_U0", "Port" : "num_jet_clusters"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.produce_em_cluster_stream_U0", "Parent" : "1", "Child" : ["3"],
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
			{"Name" : "em_cluster_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "22", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "em_cluster_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_328_1_VITIS_LOOP_329_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "49", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.produce_em_cluster_stream_U0.flow_control_loop_pipe_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.produce_jet_cluster_stream_U0", "Parent" : "1", "Child" : ["5"],
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
			{"Name" : "jet_cluster_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["13"], "DependentChan" : "23", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "jet_cluster_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_375_1_VITIS_LOOP_376_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "49", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.produce_jet_cluster_stream_U0.flow_control_loop_pipe_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_U0", "Parent" : "1", "Child" : ["7", "8", "9", "10", "11", "12"],
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
			{"Name" : "em_cluster_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "22", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "em_cluster_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_em_clusters", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_467_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_20_1_1_U7", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_20_1_1_U8", "Parent" : "6"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_6_1_1_U9", "Parent" : "6"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_6_1_1_U10", "Parent" : "6"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_4_1_1_U11", "Parent" : "6"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_U0.sparsemux_15_3_1_1_1_U12", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_1_U0", "Parent" : "1", "Child" : ["14", "15", "16", "17", "18", "19"],
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
		"StartSource" : "4",
		"StartFifo" : "start_for_select_top_n_from_stream_fixed_1440_1_U0_U",
		"Port" : [
			{"Name" : "jet_cluster_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "23", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "jet_cluster_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "num_jet_clusters", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_113_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state5"], "OneDepthLoop" : "1", "OneStateBlock": "ap_ST_fsm_state4_blk"}},
			{"Name" : "VITIS_LOOP_467_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_20_1_1_U19", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_20_1_1_U20", "Parent" : "13"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_6_1_1_U21", "Parent" : "13"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_6_1_1_U22", "Parent" : "13"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_4_1_1_U23", "Parent" : "13"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.select_top_n_from_stream_fixed_1440_1_U0.sparsemux_15_3_1_1_1_U24", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.build_trigger_objects_U0", "Parent" : "1",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "36", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "42", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "54", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "em_objects_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "em_objects_7", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.build_trigger_objects_2_U0", "Parent" : "1",
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
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "jet_objects_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "jet_objects_7", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_cluster_stream_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_cluster_stream_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_et_U", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_et_1_U", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_et_2_U", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_et_3_U", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_et_4_U", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_et_5_U", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_et_6_U", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_et_7_U", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_isolation_et_U", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_isolation_et_1_U", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_isolation_et_2_U", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_isolation_et_3_U", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_isolation_et_4_U", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_isolation_et_5_U", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_isolation_et_6_U", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_isolation_et_7_U", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_eta_U", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_eta_1_U", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_eta_2_U", "Parent" : "1"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_eta_3_U", "Parent" : "1"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_eta_4_U", "Parent" : "1"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_eta_5_U", "Parent" : "1"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_eta_6_U", "Parent" : "1"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_eta_7_U", "Parent" : "1"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_phi_U", "Parent" : "1"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_phi_1_U", "Parent" : "1"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_phi_2_U", "Parent" : "1"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_phi_3_U", "Parent" : "1"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_phi_4_U", "Parent" : "1"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_phi_5_U", "Parent" : "1"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_phi_6_U", "Parent" : "1"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_phi_7_U", "Parent" : "1"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_window_size_U", "Parent" : "1"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_window_size_1_U", "Parent" : "1"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_window_size_2_U", "Parent" : "1"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_window_size_3_U", "Parent" : "1"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_window_size_4_U", "Parent" : "1"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_window_size_5_U", "Parent" : "1"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_window_size_6_U", "Parent" : "1"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_window_size_7_U", "Parent" : "1"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_valid_U", "Parent" : "1"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_valid_1_U", "Parent" : "1"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_valid_2_U", "Parent" : "1"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_valid_3_U", "Parent" : "1"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_valid_4_U", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_valid_5_U", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_valid_6_U", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.em_top_clusters_valid_7_U", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_et_U", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_et_1_U", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_et_2_U", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_et_3_U", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_et_4_U", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_et_5_U", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_et_6_U", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_et_7_U", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_isolation_et_U", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_isolation_et_1_U", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_isolation_et_2_U", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_isolation_et_3_U", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_isolation_et_4_U", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_isolation_et_5_U", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_isolation_et_6_U", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_isolation_et_7_U", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_eta_U", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_eta_1_U", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_eta_2_U", "Parent" : "1"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_eta_3_U", "Parent" : "1"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_eta_4_U", "Parent" : "1"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_eta_5_U", "Parent" : "1"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_eta_6_U", "Parent" : "1"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_eta_7_U", "Parent" : "1"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_phi_U", "Parent" : "1"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_phi_1_U", "Parent" : "1"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_phi_2_U", "Parent" : "1"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_phi_3_U", "Parent" : "1"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_phi_4_U", "Parent" : "1"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_phi_5_U", "Parent" : "1"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_phi_6_U", "Parent" : "1"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_phi_7_U", "Parent" : "1"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_window_size_U", "Parent" : "1"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_window_size_1_U", "Parent" : "1"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_window_size_2_U", "Parent" : "1"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_window_size_3_U", "Parent" : "1"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_window_size_4_U", "Parent" : "1"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_window_size_5_U", "Parent" : "1"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_window_size_6_U", "Parent" : "1"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_window_size_7_U", "Parent" : "1"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_valid_U", "Parent" : "1"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_valid_1_U", "Parent" : "1"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_valid_2_U", "Parent" : "1"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_valid_3_U", "Parent" : "1"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_valid_4_U", "Parent" : "1"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_valid_5_U", "Parent" : "1"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_valid_6_U", "Parent" : "1"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.jet_top_clusters_valid_7_U", "Parent" : "1"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.start_for_select_top_n_from_stream_fixed_1440_U0_U", "Parent" : "1"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cluster_sort_build_em_jet_stream_fu_205.start_for_select_top_n_from_stream_fixed_1440_1_U0_U", "Parent" : "1"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calo_trigger_em_jet_stream_ref {
		towers {Type I LastRead 48 FirstWrite -1}
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
		ht {Type O LastRead -1 FirstWrite 3}
		num_em_clusters {Type O LastRead -1 FirstWrite 1}
		num_jet_clusters {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "72365", "Max" : "72378"}
	, {"Name" : "Interval", "Min" : "72366", "Max" : "72379"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	towers { bram {  { towers_Addr_A MemPortADDR2 1 32 }  { towers_EN_A MemPortCE2 1 1 }  { towers_WEN_A MemPortWE2 1 2 }  { towers_Din_A MemPortDIN2 1 16 }  { towers_Dout_A MemPortDOUT2 0 16 }  { towers_Clk_A mem_clk 1 1 }  { towers_Rst_A mem_rst 1 1 }  { towers_Addr_B MemPortADDR2 1 32 }  { towers_EN_B MemPortCE2 1 1 }  { towers_WEN_B MemPortWE2 1 2 }  { towers_Din_B MemPortDIN2 1 16 }  { towers_Dout_B MemPortDOUT2 0 16 }  { towers_Clk_B mem_clk 1 1 }  { towers_Rst_B mem_rst 1 1 } } }
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
