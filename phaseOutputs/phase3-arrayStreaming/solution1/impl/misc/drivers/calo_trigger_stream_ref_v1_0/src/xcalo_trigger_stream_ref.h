// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCALO_TRIGGER_STREAM_REF_H
#define XCALO_TRIGGER_STREAM_REF_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcalo_trigger_stream_ref_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Ctrl_BaseAddress;
} XCalo_trigger_stream_ref_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XCalo_trigger_stream_ref;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCalo_trigger_stream_ref_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCalo_trigger_stream_ref_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCalo_trigger_stream_ref_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCalo_trigger_stream_ref_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XCalo_trigger_stream_ref_Initialize(XCalo_trigger_stream_ref *InstancePtr, UINTPTR BaseAddress);
XCalo_trigger_stream_ref_Config* XCalo_trigger_stream_ref_LookupConfig(UINTPTR BaseAddress);
#else
int XCalo_trigger_stream_ref_Initialize(XCalo_trigger_stream_ref *InstancePtr, u16 DeviceId);
XCalo_trigger_stream_ref_Config* XCalo_trigger_stream_ref_LookupConfig(u16 DeviceId);
#endif
int XCalo_trigger_stream_ref_CfgInitialize(XCalo_trigger_stream_ref *InstancePtr, XCalo_trigger_stream_ref_Config *ConfigPtr);
#else
int XCalo_trigger_stream_ref_Initialize(XCalo_trigger_stream_ref *InstancePtr, const char* InstanceName);
int XCalo_trigger_stream_ref_Release(XCalo_trigger_stream_ref *InstancePtr);
#endif

void XCalo_trigger_stream_ref_Start(XCalo_trigger_stream_ref *InstancePtr);
u32 XCalo_trigger_stream_ref_IsDone(XCalo_trigger_stream_ref *InstancePtr);
u32 XCalo_trigger_stream_ref_IsIdle(XCalo_trigger_stream_ref *InstancePtr);
u32 XCalo_trigger_stream_ref_IsReady(XCalo_trigger_stream_ref *InstancePtr);
void XCalo_trigger_stream_ref_EnableAutoRestart(XCalo_trigger_stream_ref *InstancePtr);
void XCalo_trigger_stream_ref_DisableAutoRestart(XCalo_trigger_stream_ref *InstancePtr);

void XCalo_trigger_stream_ref_Set_seed_threshold(XCalo_trigger_stream_ref *InstancePtr, u32 Data);
u32 XCalo_trigger_stream_ref_Get_seed_threshold(XCalo_trigger_stream_ref *InstancePtr);
void XCalo_trigger_stream_ref_Set_cluster_threshold(XCalo_trigger_stream_ref *InstancePtr, u32 Data);
u32 XCalo_trigger_stream_ref_Get_cluster_threshold(XCalo_trigger_stream_ref *InstancePtr);
u32 XCalo_trigger_stream_ref_Get_ht(XCalo_trigger_stream_ref *InstancePtr);
u32 XCalo_trigger_stream_ref_Get_ht_vld(XCalo_trigger_stream_ref *InstancePtr);
u32 XCalo_trigger_stream_ref_Get_num_clusters(XCalo_trigger_stream_ref *InstancePtr);
u32 XCalo_trigger_stream_ref_Get_num_clusters_vld(XCalo_trigger_stream_ref *InstancePtr);

void XCalo_trigger_stream_ref_InterruptGlobalEnable(XCalo_trigger_stream_ref *InstancePtr);
void XCalo_trigger_stream_ref_InterruptGlobalDisable(XCalo_trigger_stream_ref *InstancePtr);
void XCalo_trigger_stream_ref_InterruptEnable(XCalo_trigger_stream_ref *InstancePtr, u32 Mask);
void XCalo_trigger_stream_ref_InterruptDisable(XCalo_trigger_stream_ref *InstancePtr, u32 Mask);
void XCalo_trigger_stream_ref_InterruptClear(XCalo_trigger_stream_ref *InstancePtr, u32 Mask);
u32 XCalo_trigger_stream_ref_InterruptGetEnabled(XCalo_trigger_stream_ref *InstancePtr);
u32 XCalo_trigger_stream_ref_InterruptGetStatus(XCalo_trigger_stream_ref *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
