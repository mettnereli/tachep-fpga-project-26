// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcalo_trigger_stream_ref.h"

extern XCalo_trigger_stream_ref_Config XCalo_trigger_stream_ref_ConfigTable[];

#ifdef SDT
XCalo_trigger_stream_ref_Config *XCalo_trigger_stream_ref_LookupConfig(UINTPTR BaseAddress) {
	XCalo_trigger_stream_ref_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCalo_trigger_stream_ref_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCalo_trigger_stream_ref_ConfigTable[Index].Ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XCalo_trigger_stream_ref_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalo_trigger_stream_ref_Initialize(XCalo_trigger_stream_ref *InstancePtr, UINTPTR BaseAddress) {
	XCalo_trigger_stream_ref_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalo_trigger_stream_ref_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalo_trigger_stream_ref_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCalo_trigger_stream_ref_Config *XCalo_trigger_stream_ref_LookupConfig(u16 DeviceId) {
	XCalo_trigger_stream_ref_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCALO_TRIGGER_STREAM_REF_NUM_INSTANCES; Index++) {
		if (XCalo_trigger_stream_ref_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCalo_trigger_stream_ref_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalo_trigger_stream_ref_Initialize(XCalo_trigger_stream_ref *InstancePtr, u16 DeviceId) {
	XCalo_trigger_stream_ref_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalo_trigger_stream_ref_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalo_trigger_stream_ref_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

