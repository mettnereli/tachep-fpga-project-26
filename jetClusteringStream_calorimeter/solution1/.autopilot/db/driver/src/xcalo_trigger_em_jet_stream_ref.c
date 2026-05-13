// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcalo_trigger_em_jet_stream_ref.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCalo_trigger_em_jet_stream_ref_CfgInitialize(XCalo_trigger_em_jet_stream_ref *InstancePtr, XCalo_trigger_em_jet_stream_ref_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCalo_trigger_em_jet_stream_ref_Start(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_AP_CTRL) & 0x80;
    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCalo_trigger_em_jet_stream_ref_IsDone(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCalo_trigger_em_jet_stream_ref_IsIdle(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCalo_trigger_em_jet_stream_ref_IsReady(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCalo_trigger_em_jet_stream_ref_EnableAutoRestart(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_AP_CTRL, 0x80);
}

void XCalo_trigger_em_jet_stream_ref_DisableAutoRestart(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_AP_CTRL, 0);
}

void XCalo_trigger_em_jet_stream_ref_Set_em_seed_threshold(XCalo_trigger_em_jet_stream_ref *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_EM_SEED_THRESHOLD_DATA, Data);
}

u32 XCalo_trigger_em_jet_stream_ref_Get_em_seed_threshold(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_EM_SEED_THRESHOLD_DATA);
    return Data;
}

void XCalo_trigger_em_jet_stream_ref_Set_em_cluster_threshold(XCalo_trigger_em_jet_stream_ref *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_EM_CLUSTER_THRESHOLD_DATA, Data);
}

u32 XCalo_trigger_em_jet_stream_ref_Get_em_cluster_threshold(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_EM_CLUSTER_THRESHOLD_DATA);
    return Data;
}

void XCalo_trigger_em_jet_stream_ref_Set_jet_seed_threshold(XCalo_trigger_em_jet_stream_ref *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_JET_SEED_THRESHOLD_DATA, Data);
}

u32 XCalo_trigger_em_jet_stream_ref_Get_jet_seed_threshold(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_JET_SEED_THRESHOLD_DATA);
    return Data;
}

void XCalo_trigger_em_jet_stream_ref_Set_jet_cluster_threshold(XCalo_trigger_em_jet_stream_ref *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_JET_CLUSTER_THRESHOLD_DATA, Data);
}

u32 XCalo_trigger_em_jet_stream_ref_Get_jet_cluster_threshold(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_JET_CLUSTER_THRESHOLD_DATA);
    return Data;
}

u32 XCalo_trigger_em_jet_stream_ref_Get_ht(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_HT_DATA);
    return Data;
}

u32 XCalo_trigger_em_jet_stream_ref_Get_ht_vld(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_HT_CTRL);
    return Data & 0x1;
}

u32 XCalo_trigger_em_jet_stream_ref_Get_num_em_clusters(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_NUM_EM_CLUSTERS_DATA);
    return Data;
}

u32 XCalo_trigger_em_jet_stream_ref_Get_num_em_clusters_vld(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_NUM_EM_CLUSTERS_CTRL);
    return Data & 0x1;
}

u32 XCalo_trigger_em_jet_stream_ref_Get_num_jet_clusters(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_NUM_JET_CLUSTERS_DATA);
    return Data;
}

u32 XCalo_trigger_em_jet_stream_ref_Get_num_jet_clusters_vld(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_NUM_JET_CLUSTERS_CTRL);
    return Data & 0x1;
}

void XCalo_trigger_em_jet_stream_ref_InterruptGlobalEnable(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_GIE, 1);
}

void XCalo_trigger_em_jet_stream_ref_InterruptGlobalDisable(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_GIE, 0);
}

void XCalo_trigger_em_jet_stream_ref_InterruptEnable(XCalo_trigger_em_jet_stream_ref *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_IER);
    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_IER, Register | Mask);
}

void XCalo_trigger_em_jet_stream_ref_InterruptDisable(XCalo_trigger_em_jet_stream_ref *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_IER);
    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_IER, Register & (~Mask));
}

void XCalo_trigger_em_jet_stream_ref_InterruptClear(XCalo_trigger_em_jet_stream_ref *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalo_trigger_em_jet_stream_ref_WriteReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_ISR, Mask);
}

u32 XCalo_trigger_em_jet_stream_ref_InterruptGetEnabled(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_IER);
}

u32 XCalo_trigger_em_jet_stream_ref_InterruptGetStatus(XCalo_trigger_em_jet_stream_ref *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalo_trigger_em_jet_stream_ref_ReadReg(InstancePtr->Ctrl_BaseAddress, XCALO_TRIGGER_EM_JET_STREAM_REF_CTRL_ADDR_ISR);
}

