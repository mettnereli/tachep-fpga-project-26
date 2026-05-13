set moduleName produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {produce_em_jet_cluster_stream_from_towers_Pipeline_VITIS_LOOP_500_3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict linebuf { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict linebuf_1 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict linebuf_2 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict linebuf_3 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict linebuf_4 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict linebuf_5 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict linebuf_6 { MEM_WIDTH 12 MEM_SIZE 120 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ linebuf int 12 regular {array 60 { 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 } 1 1 }  }
	{ linebuf_1 int 12 regular {array 60 { 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 } 1 1 }  }
	{ linebuf_2 int 12 regular {array 60 { 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 } 1 1 }  }
	{ linebuf_3 int 12 regular {array 60 { 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 } 1 1 }  }
	{ linebuf_4 int 12 regular {array 60 { 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 } 1 1 }  }
	{ linebuf_5 int 12 regular {array 60 { 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 } 1 1 }  }
	{ linebuf_6 int 12 regular {array 60 { 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 } 1 1 }  }
	{ empty_19 int 3 regular  }
	{ empty_20 int 3 regular  }
	{ empty_21 int 3 regular  }
	{ empty_22 int 3 regular  }
	{ empty_23 int 3 regular  }
	{ empty_24 int 3 regular  }
	{ empty int 3 regular  }
	{ em_seed_threshold int 12 regular  }
	{ em_cluster_threshold int 20 regular  }
	{ jet_seed_threshold int 12 regular  }
	{ jet_cluster_threshold int 20 regular  }
	{ center_eta int 5 regular  }
	{ em_cluster_stream int 61 regular {fifo 1 volatile }  }
	{ jet_cluster_stream int 61 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "linebuf", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_1", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_2", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_3", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_4", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_5", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "linebuf_6", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "empty_19", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty_20", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty_21", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty_22", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty_23", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty_24", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "em_seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "em_cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "jet_seed_threshold", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "jet_cluster_threshold", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "center_eta", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "em_cluster_stream", "interface" : "fifo", "bitwidth" : 61, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jet_cluster_stream", "interface" : "fifo", "bitwidth" : 61, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 238
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ em_cluster_stream_din sc_out sc_lv 61 signal 19 } 
	{ em_cluster_stream_num_data_valid sc_in sc_lv 7 signal 19 } 
	{ em_cluster_stream_fifo_cap sc_in sc_lv 7 signal 19 } 
	{ em_cluster_stream_full_n sc_in sc_logic 1 signal 19 } 
	{ em_cluster_stream_write sc_out sc_logic 1 signal 19 } 
	{ jet_cluster_stream_din sc_out sc_lv 61 signal 20 } 
	{ jet_cluster_stream_num_data_valid sc_in sc_lv 7 signal 20 } 
	{ jet_cluster_stream_fifo_cap sc_in sc_lv 7 signal 20 } 
	{ jet_cluster_stream_full_n sc_in sc_logic 1 signal 20 } 
	{ jet_cluster_stream_write sc_out sc_logic 1 signal 20 } 
	{ linebuf_address0 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce0 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q0 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address1 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce1 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q1 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address2 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce2 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q2 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address3 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce3 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q3 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address4 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce4 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q4 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address5 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce5 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q5 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address6 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce6 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q6 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address7 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce7 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q7 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address8 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce8 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q8 sc_in sc_lv 12 signal 0 } 
	{ linebuf_address9 sc_out sc_lv 6 signal 0 } 
	{ linebuf_ce9 sc_out sc_logic 1 signal 0 } 
	{ linebuf_q9 sc_in sc_lv 12 signal 0 } 
	{ linebuf_1_address0 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q0 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address1 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q1 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address2 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce2 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q2 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address3 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce3 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q3 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address4 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce4 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q4 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address5 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce5 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q5 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address6 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce6 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q6 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address7 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce7 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q7 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address8 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce8 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q8 sc_in sc_lv 12 signal 1 } 
	{ linebuf_1_address9 sc_out sc_lv 6 signal 1 } 
	{ linebuf_1_ce9 sc_out sc_logic 1 signal 1 } 
	{ linebuf_1_q9 sc_in sc_lv 12 signal 1 } 
	{ linebuf_2_address0 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q0 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address1 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q1 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address2 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce2 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q2 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address3 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce3 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q3 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address4 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce4 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q4 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address5 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce5 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q5 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address6 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce6 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q6 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address7 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce7 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q7 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address8 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce8 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q8 sc_in sc_lv 12 signal 2 } 
	{ linebuf_2_address9 sc_out sc_lv 6 signal 2 } 
	{ linebuf_2_ce9 sc_out sc_logic 1 signal 2 } 
	{ linebuf_2_q9 sc_in sc_lv 12 signal 2 } 
	{ linebuf_3_address0 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q0 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address1 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q1 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address2 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce2 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q2 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address3 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce3 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q3 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address4 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce4 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q4 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address5 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce5 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q5 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address6 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce6 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q6 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address7 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce7 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q7 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address8 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce8 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q8 sc_in sc_lv 12 signal 3 } 
	{ linebuf_3_address9 sc_out sc_lv 6 signal 3 } 
	{ linebuf_3_ce9 sc_out sc_logic 1 signal 3 } 
	{ linebuf_3_q9 sc_in sc_lv 12 signal 3 } 
	{ linebuf_4_address0 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q0 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address1 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q1 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address2 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce2 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q2 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address3 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce3 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q3 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address4 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce4 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q4 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address5 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce5 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q5 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address6 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce6 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q6 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address7 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce7 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q7 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address8 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce8 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q8 sc_in sc_lv 12 signal 4 } 
	{ linebuf_4_address9 sc_out sc_lv 6 signal 4 } 
	{ linebuf_4_ce9 sc_out sc_logic 1 signal 4 } 
	{ linebuf_4_q9 sc_in sc_lv 12 signal 4 } 
	{ linebuf_5_address0 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q0 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address1 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q1 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address2 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce2 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q2 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address3 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce3 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q3 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address4 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce4 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q4 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address5 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce5 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q5 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address6 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce6 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q6 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address7 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce7 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q7 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address8 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce8 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q8 sc_in sc_lv 12 signal 5 } 
	{ linebuf_5_address9 sc_out sc_lv 6 signal 5 } 
	{ linebuf_5_ce9 sc_out sc_logic 1 signal 5 } 
	{ linebuf_5_q9 sc_in sc_lv 12 signal 5 } 
	{ linebuf_6_address0 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q0 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address1 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q1 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address2 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce2 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q2 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address3 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce3 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q3 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address4 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce4 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q4 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address5 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce5 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q5 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address6 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce6 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q6 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address7 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce7 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q7 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address8 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce8 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q8 sc_in sc_lv 12 signal 6 } 
	{ linebuf_6_address9 sc_out sc_lv 6 signal 6 } 
	{ linebuf_6_ce9 sc_out sc_logic 1 signal 6 } 
	{ linebuf_6_q9 sc_in sc_lv 12 signal 6 } 
	{ empty_19 sc_in sc_lv 3 signal 7 } 
	{ empty_20 sc_in sc_lv 3 signal 8 } 
	{ empty_21 sc_in sc_lv 3 signal 9 } 
	{ empty_22 sc_in sc_lv 3 signal 10 } 
	{ empty_23 sc_in sc_lv 3 signal 11 } 
	{ empty_24 sc_in sc_lv 3 signal 12 } 
	{ empty sc_in sc_lv 3 signal 13 } 
	{ em_seed_threshold sc_in sc_lv 12 signal 14 } 
	{ em_cluster_threshold sc_in sc_lv 20 signal 15 } 
	{ jet_seed_threshold sc_in sc_lv 12 signal 16 } 
	{ jet_cluster_threshold sc_in sc_lv 20 signal 17 } 
	{ center_eta sc_in sc_lv 5 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "linebuf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address0" }} , 
 	{ "name": "linebuf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce0" }} , 
 	{ "name": "linebuf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q0" }} , 
 	{ "name": "linebuf_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address1" }} , 
 	{ "name": "linebuf_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce1" }} , 
 	{ "name": "linebuf_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q1" }} , 
 	{ "name": "linebuf_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address2" }} , 
 	{ "name": "linebuf_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce2" }} , 
 	{ "name": "linebuf_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q2" }} , 
 	{ "name": "linebuf_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address3" }} , 
 	{ "name": "linebuf_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce3" }} , 
 	{ "name": "linebuf_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q3" }} , 
 	{ "name": "linebuf_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address4" }} , 
 	{ "name": "linebuf_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce4" }} , 
 	{ "name": "linebuf_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q4" }} , 
 	{ "name": "linebuf_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address5" }} , 
 	{ "name": "linebuf_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce5" }} , 
 	{ "name": "linebuf_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q5" }} , 
 	{ "name": "linebuf_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address6" }} , 
 	{ "name": "linebuf_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce6" }} , 
 	{ "name": "linebuf_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q6" }} , 
 	{ "name": "linebuf_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address7" }} , 
 	{ "name": "linebuf_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce7" }} , 
 	{ "name": "linebuf_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q7" }} , 
 	{ "name": "linebuf_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address8" }} , 
 	{ "name": "linebuf_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce8" }} , 
 	{ "name": "linebuf_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q8" }} , 
 	{ "name": "linebuf_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf", "role": "address9" }} , 
 	{ "name": "linebuf_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf", "role": "ce9" }} , 
 	{ "name": "linebuf_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf", "role": "q9" }} , 
 	{ "name": "linebuf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address0" }} , 
 	{ "name": "linebuf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce0" }} , 
 	{ "name": "linebuf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q0" }} , 
 	{ "name": "linebuf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address1" }} , 
 	{ "name": "linebuf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce1" }} , 
 	{ "name": "linebuf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q1" }} , 
 	{ "name": "linebuf_1_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address2" }} , 
 	{ "name": "linebuf_1_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce2" }} , 
 	{ "name": "linebuf_1_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q2" }} , 
 	{ "name": "linebuf_1_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address3" }} , 
 	{ "name": "linebuf_1_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce3" }} , 
 	{ "name": "linebuf_1_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q3" }} , 
 	{ "name": "linebuf_1_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address4" }} , 
 	{ "name": "linebuf_1_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce4" }} , 
 	{ "name": "linebuf_1_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q4" }} , 
 	{ "name": "linebuf_1_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address5" }} , 
 	{ "name": "linebuf_1_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce5" }} , 
 	{ "name": "linebuf_1_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q5" }} , 
 	{ "name": "linebuf_1_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address6" }} , 
 	{ "name": "linebuf_1_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce6" }} , 
 	{ "name": "linebuf_1_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q6" }} , 
 	{ "name": "linebuf_1_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address7" }} , 
 	{ "name": "linebuf_1_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce7" }} , 
 	{ "name": "linebuf_1_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q7" }} , 
 	{ "name": "linebuf_1_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address8" }} , 
 	{ "name": "linebuf_1_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce8" }} , 
 	{ "name": "linebuf_1_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q8" }} , 
 	{ "name": "linebuf_1_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_1", "role": "address9" }} , 
 	{ "name": "linebuf_1_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_1", "role": "ce9" }} , 
 	{ "name": "linebuf_1_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_1", "role": "q9" }} , 
 	{ "name": "linebuf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address0" }} , 
 	{ "name": "linebuf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce0" }} , 
 	{ "name": "linebuf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q0" }} , 
 	{ "name": "linebuf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address1" }} , 
 	{ "name": "linebuf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce1" }} , 
 	{ "name": "linebuf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q1" }} , 
 	{ "name": "linebuf_2_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address2" }} , 
 	{ "name": "linebuf_2_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce2" }} , 
 	{ "name": "linebuf_2_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q2" }} , 
 	{ "name": "linebuf_2_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address3" }} , 
 	{ "name": "linebuf_2_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce3" }} , 
 	{ "name": "linebuf_2_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q3" }} , 
 	{ "name": "linebuf_2_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address4" }} , 
 	{ "name": "linebuf_2_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce4" }} , 
 	{ "name": "linebuf_2_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q4" }} , 
 	{ "name": "linebuf_2_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address5" }} , 
 	{ "name": "linebuf_2_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce5" }} , 
 	{ "name": "linebuf_2_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q5" }} , 
 	{ "name": "linebuf_2_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address6" }} , 
 	{ "name": "linebuf_2_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce6" }} , 
 	{ "name": "linebuf_2_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q6" }} , 
 	{ "name": "linebuf_2_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address7" }} , 
 	{ "name": "linebuf_2_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce7" }} , 
 	{ "name": "linebuf_2_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q7" }} , 
 	{ "name": "linebuf_2_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address8" }} , 
 	{ "name": "linebuf_2_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce8" }} , 
 	{ "name": "linebuf_2_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q8" }} , 
 	{ "name": "linebuf_2_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_2", "role": "address9" }} , 
 	{ "name": "linebuf_2_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_2", "role": "ce9" }} , 
 	{ "name": "linebuf_2_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_2", "role": "q9" }} , 
 	{ "name": "linebuf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address0" }} , 
 	{ "name": "linebuf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce0" }} , 
 	{ "name": "linebuf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q0" }} , 
 	{ "name": "linebuf_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address1" }} , 
 	{ "name": "linebuf_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce1" }} , 
 	{ "name": "linebuf_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q1" }} , 
 	{ "name": "linebuf_3_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address2" }} , 
 	{ "name": "linebuf_3_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce2" }} , 
 	{ "name": "linebuf_3_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q2" }} , 
 	{ "name": "linebuf_3_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address3" }} , 
 	{ "name": "linebuf_3_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce3" }} , 
 	{ "name": "linebuf_3_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q3" }} , 
 	{ "name": "linebuf_3_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address4" }} , 
 	{ "name": "linebuf_3_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce4" }} , 
 	{ "name": "linebuf_3_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q4" }} , 
 	{ "name": "linebuf_3_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address5" }} , 
 	{ "name": "linebuf_3_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce5" }} , 
 	{ "name": "linebuf_3_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q5" }} , 
 	{ "name": "linebuf_3_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address6" }} , 
 	{ "name": "linebuf_3_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce6" }} , 
 	{ "name": "linebuf_3_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q6" }} , 
 	{ "name": "linebuf_3_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address7" }} , 
 	{ "name": "linebuf_3_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce7" }} , 
 	{ "name": "linebuf_3_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q7" }} , 
 	{ "name": "linebuf_3_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address8" }} , 
 	{ "name": "linebuf_3_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce8" }} , 
 	{ "name": "linebuf_3_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q8" }} , 
 	{ "name": "linebuf_3_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_3", "role": "address9" }} , 
 	{ "name": "linebuf_3_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_3", "role": "ce9" }} , 
 	{ "name": "linebuf_3_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_3", "role": "q9" }} , 
 	{ "name": "linebuf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address0" }} , 
 	{ "name": "linebuf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce0" }} , 
 	{ "name": "linebuf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q0" }} , 
 	{ "name": "linebuf_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address1" }} , 
 	{ "name": "linebuf_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce1" }} , 
 	{ "name": "linebuf_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q1" }} , 
 	{ "name": "linebuf_4_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address2" }} , 
 	{ "name": "linebuf_4_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce2" }} , 
 	{ "name": "linebuf_4_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q2" }} , 
 	{ "name": "linebuf_4_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address3" }} , 
 	{ "name": "linebuf_4_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce3" }} , 
 	{ "name": "linebuf_4_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q3" }} , 
 	{ "name": "linebuf_4_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address4" }} , 
 	{ "name": "linebuf_4_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce4" }} , 
 	{ "name": "linebuf_4_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q4" }} , 
 	{ "name": "linebuf_4_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address5" }} , 
 	{ "name": "linebuf_4_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce5" }} , 
 	{ "name": "linebuf_4_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q5" }} , 
 	{ "name": "linebuf_4_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address6" }} , 
 	{ "name": "linebuf_4_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce6" }} , 
 	{ "name": "linebuf_4_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q6" }} , 
 	{ "name": "linebuf_4_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address7" }} , 
 	{ "name": "linebuf_4_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce7" }} , 
 	{ "name": "linebuf_4_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q7" }} , 
 	{ "name": "linebuf_4_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address8" }} , 
 	{ "name": "linebuf_4_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce8" }} , 
 	{ "name": "linebuf_4_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q8" }} , 
 	{ "name": "linebuf_4_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_4", "role": "address9" }} , 
 	{ "name": "linebuf_4_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_4", "role": "ce9" }} , 
 	{ "name": "linebuf_4_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_4", "role": "q9" }} , 
 	{ "name": "linebuf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address0" }} , 
 	{ "name": "linebuf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce0" }} , 
 	{ "name": "linebuf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q0" }} , 
 	{ "name": "linebuf_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address1" }} , 
 	{ "name": "linebuf_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce1" }} , 
 	{ "name": "linebuf_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q1" }} , 
 	{ "name": "linebuf_5_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address2" }} , 
 	{ "name": "linebuf_5_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce2" }} , 
 	{ "name": "linebuf_5_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q2" }} , 
 	{ "name": "linebuf_5_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address3" }} , 
 	{ "name": "linebuf_5_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce3" }} , 
 	{ "name": "linebuf_5_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q3" }} , 
 	{ "name": "linebuf_5_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address4" }} , 
 	{ "name": "linebuf_5_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce4" }} , 
 	{ "name": "linebuf_5_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q4" }} , 
 	{ "name": "linebuf_5_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address5" }} , 
 	{ "name": "linebuf_5_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce5" }} , 
 	{ "name": "linebuf_5_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q5" }} , 
 	{ "name": "linebuf_5_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address6" }} , 
 	{ "name": "linebuf_5_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce6" }} , 
 	{ "name": "linebuf_5_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q6" }} , 
 	{ "name": "linebuf_5_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address7" }} , 
 	{ "name": "linebuf_5_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce7" }} , 
 	{ "name": "linebuf_5_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q7" }} , 
 	{ "name": "linebuf_5_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address8" }} , 
 	{ "name": "linebuf_5_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce8" }} , 
 	{ "name": "linebuf_5_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q8" }} , 
 	{ "name": "linebuf_5_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_5", "role": "address9" }} , 
 	{ "name": "linebuf_5_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_5", "role": "ce9" }} , 
 	{ "name": "linebuf_5_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_5", "role": "q9" }} , 
 	{ "name": "linebuf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address0" }} , 
 	{ "name": "linebuf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce0" }} , 
 	{ "name": "linebuf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q0" }} , 
 	{ "name": "linebuf_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address1" }} , 
 	{ "name": "linebuf_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce1" }} , 
 	{ "name": "linebuf_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q1" }} , 
 	{ "name": "linebuf_6_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address2" }} , 
 	{ "name": "linebuf_6_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce2" }} , 
 	{ "name": "linebuf_6_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q2" }} , 
 	{ "name": "linebuf_6_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address3" }} , 
 	{ "name": "linebuf_6_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce3" }} , 
 	{ "name": "linebuf_6_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q3" }} , 
 	{ "name": "linebuf_6_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address4" }} , 
 	{ "name": "linebuf_6_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce4" }} , 
 	{ "name": "linebuf_6_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q4" }} , 
 	{ "name": "linebuf_6_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address5" }} , 
 	{ "name": "linebuf_6_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce5" }} , 
 	{ "name": "linebuf_6_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q5" }} , 
 	{ "name": "linebuf_6_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address6" }} , 
 	{ "name": "linebuf_6_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce6" }} , 
 	{ "name": "linebuf_6_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q6" }} , 
 	{ "name": "linebuf_6_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address7" }} , 
 	{ "name": "linebuf_6_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce7" }} , 
 	{ "name": "linebuf_6_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q7" }} , 
 	{ "name": "linebuf_6_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address8" }} , 
 	{ "name": "linebuf_6_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce8" }} , 
 	{ "name": "linebuf_6_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q8" }} , 
 	{ "name": "linebuf_6_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "linebuf_6", "role": "address9" }} , 
 	{ "name": "linebuf_6_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "linebuf_6", "role": "ce9" }} , 
 	{ "name": "linebuf_6_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "linebuf_6", "role": "q9" }} , 
 	{ "name": "empty_19", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty_19", "role": "default" }} , 
 	{ "name": "empty_20", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty_20", "role": "default" }} , 
 	{ "name": "empty_21", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty_21", "role": "default" }} , 
 	{ "name": "empty_22", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty_22", "role": "default" }} , 
 	{ "name": "empty_23", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty_23", "role": "default" }} , 
 	{ "name": "empty_24", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty_24", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "em_seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "em_seed_threshold", "role": "default" }} , 
 	{ "name": "em_cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "em_cluster_threshold", "role": "default" }} , 
 	{ "name": "jet_seed_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "jet_seed_threshold", "role": "default" }} , 
 	{ "name": "jet_cluster_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "jet_cluster_threshold", "role": "default" }} , 
 	{ "name": "center_eta", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "center_eta", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U13", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U14", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U15", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U16", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U17", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U18", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U19", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U20", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U21", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U22", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U23", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U24", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U25", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U26", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U27", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U28", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U29", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U30", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U31", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U32", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U33", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U34", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U35", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U36", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U37", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U38", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U39", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U40", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U41", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U42", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U43", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U44", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U45", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U46", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U47", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U48", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U49", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U50", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U51", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U52", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U53", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U54", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U55", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U56", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U57", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U58", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U59", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U60", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_12_1_1_U61", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "62", "Max" : "62"}
	, {"Name" : "Interval", "Min" : "62", "Max" : "62"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	linebuf { ap_memory {  { linebuf_address0 mem_address 1 6 }  { linebuf_ce0 mem_ce 1 1 }  { linebuf_q0 mem_dout 0 12 }  { linebuf_address1 MemPortADDR2 1 6 }  { linebuf_ce1 MemPortCE2 1 1 }  { linebuf_q1 MemPortDOUT2 0 12 }  { linebuf_address2 MemPortADDR2 1 6 }  { linebuf_ce2 MemPortCE2 1 1 }  { linebuf_q2 MemPortDOUT2 0 12 }  { linebuf_address3 MemPortADDR2 1 6 }  { linebuf_ce3 MemPortCE2 1 1 }  { linebuf_q3 MemPortDOUT2 0 12 }  { linebuf_address4 MemPortADDR2 1 6 }  { linebuf_ce4 MemPortCE2 1 1 }  { linebuf_q4 MemPortDOUT2 0 12 }  { linebuf_address5 MemPortADDR2 1 6 }  { linebuf_ce5 MemPortCE2 1 1 }  { linebuf_q5 MemPortDOUT2 0 12 }  { linebuf_address6 MemPortADDR2 1 6 }  { linebuf_ce6 MemPortCE2 1 1 }  { linebuf_q6 MemPortDOUT2 0 12 }  { linebuf_address7 MemPortADDR2 1 6 }  { linebuf_ce7 MemPortCE2 1 1 }  { linebuf_q7 MemPortDOUT2 0 12 }  { linebuf_address8 MemPortADDR2 1 6 }  { linebuf_ce8 MemPortCE2 1 1 }  { linebuf_q8 MemPortDOUT2 0 12 }  { linebuf_address9 MemPortADDR2 1 6 }  { linebuf_ce9 MemPortCE2 1 1 }  { linebuf_q9 MemPortDOUT2 0 12 } } }
	linebuf_1 { ap_memory {  { linebuf_1_address0 mem_address 1 6 }  { linebuf_1_ce0 mem_ce 1 1 }  { linebuf_1_q0 mem_dout 0 12 }  { linebuf_1_address1 MemPortADDR2 1 6 }  { linebuf_1_ce1 MemPortCE2 1 1 }  { linebuf_1_q1 MemPortDOUT2 0 12 }  { linebuf_1_address2 MemPortADDR2 1 6 }  { linebuf_1_ce2 MemPortCE2 1 1 }  { linebuf_1_q2 MemPortDOUT2 0 12 }  { linebuf_1_address3 MemPortADDR2 1 6 }  { linebuf_1_ce3 MemPortCE2 1 1 }  { linebuf_1_q3 MemPortDOUT2 0 12 }  { linebuf_1_address4 MemPortADDR2 1 6 }  { linebuf_1_ce4 MemPortCE2 1 1 }  { linebuf_1_q4 MemPortDOUT2 0 12 }  { linebuf_1_address5 MemPortADDR2 1 6 }  { linebuf_1_ce5 MemPortCE2 1 1 }  { linebuf_1_q5 MemPortDOUT2 0 12 }  { linebuf_1_address6 MemPortADDR2 1 6 }  { linebuf_1_ce6 MemPortCE2 1 1 }  { linebuf_1_q6 MemPortDOUT2 0 12 }  { linebuf_1_address7 MemPortADDR2 1 6 }  { linebuf_1_ce7 MemPortCE2 1 1 }  { linebuf_1_q7 MemPortDOUT2 0 12 }  { linebuf_1_address8 MemPortADDR2 1 6 }  { linebuf_1_ce8 MemPortCE2 1 1 }  { linebuf_1_q8 MemPortDOUT2 0 12 }  { linebuf_1_address9 MemPortADDR2 1 6 }  { linebuf_1_ce9 MemPortCE2 1 1 }  { linebuf_1_q9 MemPortDOUT2 0 12 } } }
	linebuf_2 { ap_memory {  { linebuf_2_address0 mem_address 1 6 }  { linebuf_2_ce0 mem_ce 1 1 }  { linebuf_2_q0 mem_dout 0 12 }  { linebuf_2_address1 MemPortADDR2 1 6 }  { linebuf_2_ce1 MemPortCE2 1 1 }  { linebuf_2_q1 MemPortDOUT2 0 12 }  { linebuf_2_address2 MemPortADDR2 1 6 }  { linebuf_2_ce2 MemPortCE2 1 1 }  { linebuf_2_q2 MemPortDOUT2 0 12 }  { linebuf_2_address3 MemPortADDR2 1 6 }  { linebuf_2_ce3 MemPortCE2 1 1 }  { linebuf_2_q3 MemPortDOUT2 0 12 }  { linebuf_2_address4 MemPortADDR2 1 6 }  { linebuf_2_ce4 MemPortCE2 1 1 }  { linebuf_2_q4 MemPortDOUT2 0 12 }  { linebuf_2_address5 MemPortADDR2 1 6 }  { linebuf_2_ce5 MemPortCE2 1 1 }  { linebuf_2_q5 MemPortDOUT2 0 12 }  { linebuf_2_address6 MemPortADDR2 1 6 }  { linebuf_2_ce6 MemPortCE2 1 1 }  { linebuf_2_q6 MemPortDOUT2 0 12 }  { linebuf_2_address7 MemPortADDR2 1 6 }  { linebuf_2_ce7 MemPortCE2 1 1 }  { linebuf_2_q7 MemPortDOUT2 0 12 }  { linebuf_2_address8 MemPortADDR2 1 6 }  { linebuf_2_ce8 MemPortCE2 1 1 }  { linebuf_2_q8 MemPortDOUT2 0 12 }  { linebuf_2_address9 MemPortADDR2 1 6 }  { linebuf_2_ce9 MemPortCE2 1 1 }  { linebuf_2_q9 MemPortDOUT2 0 12 } } }
	linebuf_3 { ap_memory {  { linebuf_3_address0 mem_address 1 6 }  { linebuf_3_ce0 mem_ce 1 1 }  { linebuf_3_q0 mem_dout 0 12 }  { linebuf_3_address1 MemPortADDR2 1 6 }  { linebuf_3_ce1 MemPortCE2 1 1 }  { linebuf_3_q1 MemPortDOUT2 0 12 }  { linebuf_3_address2 MemPortADDR2 1 6 }  { linebuf_3_ce2 MemPortCE2 1 1 }  { linebuf_3_q2 MemPortDOUT2 0 12 }  { linebuf_3_address3 MemPortADDR2 1 6 }  { linebuf_3_ce3 MemPortCE2 1 1 }  { linebuf_3_q3 MemPortDOUT2 0 12 }  { linebuf_3_address4 MemPortADDR2 1 6 }  { linebuf_3_ce4 MemPortCE2 1 1 }  { linebuf_3_q4 MemPortDOUT2 0 12 }  { linebuf_3_address5 MemPortADDR2 1 6 }  { linebuf_3_ce5 MemPortCE2 1 1 }  { linebuf_3_q5 MemPortDOUT2 0 12 }  { linebuf_3_address6 MemPortADDR2 1 6 }  { linebuf_3_ce6 MemPortCE2 1 1 }  { linebuf_3_q6 MemPortDOUT2 0 12 }  { linebuf_3_address7 MemPortADDR2 1 6 }  { linebuf_3_ce7 MemPortCE2 1 1 }  { linebuf_3_q7 MemPortDOUT2 0 12 }  { linebuf_3_address8 MemPortADDR2 1 6 }  { linebuf_3_ce8 MemPortCE2 1 1 }  { linebuf_3_q8 MemPortDOUT2 0 12 }  { linebuf_3_address9 MemPortADDR2 1 6 }  { linebuf_3_ce9 MemPortCE2 1 1 }  { linebuf_3_q9 MemPortDOUT2 0 12 } } }
	linebuf_4 { ap_memory {  { linebuf_4_address0 mem_address 1 6 }  { linebuf_4_ce0 mem_ce 1 1 }  { linebuf_4_q0 mem_dout 0 12 }  { linebuf_4_address1 MemPortADDR2 1 6 }  { linebuf_4_ce1 MemPortCE2 1 1 }  { linebuf_4_q1 MemPortDOUT2 0 12 }  { linebuf_4_address2 MemPortADDR2 1 6 }  { linebuf_4_ce2 MemPortCE2 1 1 }  { linebuf_4_q2 MemPortDOUT2 0 12 }  { linebuf_4_address3 MemPortADDR2 1 6 }  { linebuf_4_ce3 MemPortCE2 1 1 }  { linebuf_4_q3 MemPortDOUT2 0 12 }  { linebuf_4_address4 MemPortADDR2 1 6 }  { linebuf_4_ce4 MemPortCE2 1 1 }  { linebuf_4_q4 MemPortDOUT2 0 12 }  { linebuf_4_address5 MemPortADDR2 1 6 }  { linebuf_4_ce5 MemPortCE2 1 1 }  { linebuf_4_q5 MemPortDOUT2 0 12 }  { linebuf_4_address6 MemPortADDR2 1 6 }  { linebuf_4_ce6 MemPortCE2 1 1 }  { linebuf_4_q6 MemPortDOUT2 0 12 }  { linebuf_4_address7 MemPortADDR2 1 6 }  { linebuf_4_ce7 MemPortCE2 1 1 }  { linebuf_4_q7 MemPortDOUT2 0 12 }  { linebuf_4_address8 MemPortADDR2 1 6 }  { linebuf_4_ce8 MemPortCE2 1 1 }  { linebuf_4_q8 MemPortDOUT2 0 12 }  { linebuf_4_address9 MemPortADDR2 1 6 }  { linebuf_4_ce9 MemPortCE2 1 1 }  { linebuf_4_q9 MemPortDOUT2 0 12 } } }
	linebuf_5 { ap_memory {  { linebuf_5_address0 mem_address 1 6 }  { linebuf_5_ce0 mem_ce 1 1 }  { linebuf_5_q0 mem_dout 0 12 }  { linebuf_5_address1 MemPortADDR2 1 6 }  { linebuf_5_ce1 MemPortCE2 1 1 }  { linebuf_5_q1 MemPortDOUT2 0 12 }  { linebuf_5_address2 MemPortADDR2 1 6 }  { linebuf_5_ce2 MemPortCE2 1 1 }  { linebuf_5_q2 MemPortDOUT2 0 12 }  { linebuf_5_address3 MemPortADDR2 1 6 }  { linebuf_5_ce3 MemPortCE2 1 1 }  { linebuf_5_q3 MemPortDOUT2 0 12 }  { linebuf_5_address4 MemPortADDR2 1 6 }  { linebuf_5_ce4 MemPortCE2 1 1 }  { linebuf_5_q4 MemPortDOUT2 0 12 }  { linebuf_5_address5 MemPortADDR2 1 6 }  { linebuf_5_ce5 MemPortCE2 1 1 }  { linebuf_5_q5 MemPortDOUT2 0 12 }  { linebuf_5_address6 MemPortADDR2 1 6 }  { linebuf_5_ce6 MemPortCE2 1 1 }  { linebuf_5_q6 MemPortDOUT2 0 12 }  { linebuf_5_address7 MemPortADDR2 1 6 }  { linebuf_5_ce7 MemPortCE2 1 1 }  { linebuf_5_q7 MemPortDOUT2 0 12 }  { linebuf_5_address8 MemPortADDR2 1 6 }  { linebuf_5_ce8 MemPortCE2 1 1 }  { linebuf_5_q8 MemPortDOUT2 0 12 }  { linebuf_5_address9 MemPortADDR2 1 6 }  { linebuf_5_ce9 MemPortCE2 1 1 }  { linebuf_5_q9 MemPortDOUT2 0 12 } } }
	linebuf_6 { ap_memory {  { linebuf_6_address0 mem_address 1 6 }  { linebuf_6_ce0 mem_ce 1 1 }  { linebuf_6_q0 mem_dout 0 12 }  { linebuf_6_address1 MemPortADDR2 1 6 }  { linebuf_6_ce1 MemPortCE2 1 1 }  { linebuf_6_q1 MemPortDOUT2 0 12 }  { linebuf_6_address2 MemPortADDR2 1 6 }  { linebuf_6_ce2 MemPortCE2 1 1 }  { linebuf_6_q2 MemPortDOUT2 0 12 }  { linebuf_6_address3 MemPortADDR2 1 6 }  { linebuf_6_ce3 MemPortCE2 1 1 }  { linebuf_6_q3 MemPortDOUT2 0 12 }  { linebuf_6_address4 MemPortADDR2 1 6 }  { linebuf_6_ce4 MemPortCE2 1 1 }  { linebuf_6_q4 MemPortDOUT2 0 12 }  { linebuf_6_address5 MemPortADDR2 1 6 }  { linebuf_6_ce5 MemPortCE2 1 1 }  { linebuf_6_q5 MemPortDOUT2 0 12 }  { linebuf_6_address6 MemPortADDR2 1 6 }  { linebuf_6_ce6 MemPortCE2 1 1 }  { linebuf_6_q6 MemPortDOUT2 0 12 }  { linebuf_6_address7 MemPortADDR2 1 6 }  { linebuf_6_ce7 MemPortCE2 1 1 }  { linebuf_6_q7 MemPortDOUT2 0 12 }  { linebuf_6_address8 MemPortADDR2 1 6 }  { linebuf_6_ce8 MemPortCE2 1 1 }  { linebuf_6_q8 MemPortDOUT2 0 12 }  { linebuf_6_address9 MemPortADDR2 1 6 }  { linebuf_6_ce9 MemPortCE2 1 1 }  { linebuf_6_q9 MemPortDOUT2 0 12 } } }
	empty_19 { ap_none {  { empty_19 in_data 0 3 } } }
	empty_20 { ap_none {  { empty_20 in_data 0 3 } } }
	empty_21 { ap_none {  { empty_21 in_data 0 3 } } }
	empty_22 { ap_none {  { empty_22 in_data 0 3 } } }
	empty_23 { ap_none {  { empty_23 in_data 0 3 } } }
	empty_24 { ap_none {  { empty_24 in_data 0 3 } } }
	empty { ap_none {  { empty in_data 0 3 } } }
	em_seed_threshold { ap_none {  { em_seed_threshold in_data 0 12 } } }
	em_cluster_threshold { ap_none {  { em_cluster_threshold in_data 0 20 } } }
	jet_seed_threshold { ap_none {  { jet_seed_threshold in_data 0 12 } } }
	jet_cluster_threshold { ap_none {  { jet_cluster_threshold in_data 0 20 } } }
	center_eta { ap_none {  { center_eta in_data 0 5 } } }
	em_cluster_stream { ap_fifo {  { em_cluster_stream_din fifo_data_in 1 61 }  { em_cluster_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { em_cluster_stream_fifo_cap fifo_update 0 7 }  { em_cluster_stream_full_n fifo_status 0 1 }  { em_cluster_stream_write fifo_port_we 1 1 } } }
	jet_cluster_stream { ap_fifo {  { jet_cluster_stream_din fifo_data_in 1 61 }  { jet_cluster_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { jet_cluster_stream_fifo_cap fifo_update 0 7 }  { jet_cluster_stream_full_n fifo_status 0 1 }  { jet_cluster_stream_write fifo_port_we 1 1 } } }
}
