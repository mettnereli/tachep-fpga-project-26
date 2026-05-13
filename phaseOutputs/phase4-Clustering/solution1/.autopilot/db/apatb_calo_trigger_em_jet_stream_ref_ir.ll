; ModuleID = '/scratch/emettner/tachep-fpga-project-26/calorimeter/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<12>" = type { %"struct.ap_int_base<12, false>" }
%"struct.ap_int_base<12, false>" = type { %"struct.ssdm_int<12, false>" }
%"struct.ssdm_int<12, false>" = type { i12 }
%"struct.ap_uint<20>" = type { %"struct.ap_int_base<20, false>" }
%"struct.ap_int_base<20, false>" = type { %"struct.ssdm_int<20, false>" }
%"struct.ssdm_int<20, false>" = type { i20 }
%struct.TriggerObject = type { %"struct.ap_uint<20>", %"struct.ap_uint<20>", %"struct.ap_uint<6>", %"struct.ap_uint<6>", %"struct.ap_uint<4>", i32, i1 }
%"struct.ap_uint<6>" = type { %"struct.ap_int_base<6, false>" }
%"struct.ap_int_base<6, false>" = type { %"struct.ssdm_int<6, false>" }
%"struct.ssdm_int<6, false>" = type { i6 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<24>" = type { %"struct.ap_int_base<24, false>" }
%"struct.ap_int_base<24, false>" = type { %"struct.ssdm_int<24, false>" }
%"struct.ssdm_int<24, false>" = type { i24 }

; Function Attrs: noinline
define void @apatb_calo_trigger_em_jet_stream_ref_ir([60 x %"struct.ap_uint<12>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="30" %towers, %"struct.ap_uint<12>"* nocapture readonly %em_seed_threshold, %"struct.ap_uint<20>"* nocapture readonly %em_cluster_threshold, %"struct.ap_uint<12>"* nocapture readonly %jet_seed_threshold, %"struct.ap_uint<20>"* nocapture readonly %jet_cluster_threshold, %struct.TriggerObject* noalias nocapture nonnull "fpga.decayed.dim.hint"="8" "partition" %em_objects, %struct.TriggerObject* noalias nocapture nonnull "fpga.decayed.dim.hint"="8" "partition" %jet_objects, %"struct.ap_uint<24>"* noalias nocapture nonnull %ht, i32* noalias nocapture nonnull %num_em_clusters, i32* noalias nocapture nonnull %num_jet_clusters) local_unnamed_addr #0 {
entry:
  %towers_copy = alloca [30 x [60 x i12]], align 512
  %em_objects_copy_0 = alloca i89, align 512
  %em_objects_copy_1 = alloca i89, align 512
  %em_objects_copy_2 = alloca i89, align 512
  %em_objects_copy_3 = alloca i89, align 512
  %em_objects_copy_4 = alloca i89, align 512
  %em_objects_copy_5 = alloca i89, align 512
  %em_objects_copy_6 = alloca i89, align 512
  %em_objects_copy_7 = alloca i89, align 512
  %jet_objects_copy_0 = alloca i89, align 512
  %jet_objects_copy_1 = alloca i89, align 512
  %jet_objects_copy_2 = alloca i89, align 512
  %jet_objects_copy_3 = alloca i89, align 512
  %jet_objects_copy_4 = alloca i89, align 512
  %jet_objects_copy_5 = alloca i89, align 512
  %jet_objects_copy_6 = alloca i89, align 512
  %jet_objects_copy_7 = alloca i89, align 512
  %ht_copy = alloca i24, align 512
  %num_em_clusters_copy = alloca i32, align 512
  %num_jet_clusters_copy = alloca i32, align 512
  %0 = bitcast [60 x %"struct.ap_uint<12>"]* %towers to [30 x [60 x %"struct.ap_uint<12>"]]*
  %1 = bitcast %struct.TriggerObject* %em_objects to [8 x %struct.TriggerObject]*
  %2 = bitcast %struct.TriggerObject* %jet_objects to [8 x %struct.TriggerObject]*
  call void @copy_in([30 x [60 x %"struct.ap_uint<12>"]]* nonnull %0, [30 x [60 x i12]]* nonnull align 512 %towers_copy, [8 x %struct.TriggerObject]* nonnull %1, i89* nonnull align 512 %em_objects_copy_0, i89* nonnull align 512 %em_objects_copy_1, i89* nonnull align 512 %em_objects_copy_2, i89* nonnull align 512 %em_objects_copy_3, i89* nonnull align 512 %em_objects_copy_4, i89* nonnull align 512 %em_objects_copy_5, i89* nonnull align 512 %em_objects_copy_6, i89* nonnull align 512 %em_objects_copy_7, [8 x %struct.TriggerObject]* nonnull %2, i89* nonnull align 512 %jet_objects_copy_0, i89* nonnull align 512 %jet_objects_copy_1, i89* nonnull align 512 %jet_objects_copy_2, i89* nonnull align 512 %jet_objects_copy_3, i89* nonnull align 512 %jet_objects_copy_4, i89* nonnull align 512 %jet_objects_copy_5, i89* nonnull align 512 %jet_objects_copy_6, i89* nonnull align 512 %jet_objects_copy_7, %"struct.ap_uint<24>"* nonnull %ht, i24* nonnull align 512 %ht_copy, i32* nonnull %num_em_clusters, i32* nonnull align 512 %num_em_clusters_copy, i32* nonnull %num_jet_clusters, i32* nonnull align 512 %num_jet_clusters_copy)
  call void @apatb_calo_trigger_em_jet_stream_ref_hw([30 x [60 x i12]]* %towers_copy, %"struct.ap_uint<12>"* %em_seed_threshold, %"struct.ap_uint<20>"* %em_cluster_threshold, %"struct.ap_uint<12>"* %jet_seed_threshold, %"struct.ap_uint<20>"* %jet_cluster_threshold, i89* %em_objects_copy_0, i89* %em_objects_copy_1, i89* %em_objects_copy_2, i89* %em_objects_copy_3, i89* %em_objects_copy_4, i89* %em_objects_copy_5, i89* %em_objects_copy_6, i89* %em_objects_copy_7, i89* %jet_objects_copy_0, i89* %jet_objects_copy_1, i89* %jet_objects_copy_2, i89* %jet_objects_copy_3, i89* %jet_objects_copy_4, i89* %jet_objects_copy_5, i89* %jet_objects_copy_6, i89* %jet_objects_copy_7, i24* %ht_copy, i32* %num_em_clusters_copy, i32* %num_jet_clusters_copy)
  call void @copy_back([30 x [60 x %"struct.ap_uint<12>"]]* %0, [30 x [60 x i12]]* %towers_copy, [8 x %struct.TriggerObject]* %1, i89* %em_objects_copy_0, i89* %em_objects_copy_1, i89* %em_objects_copy_2, i89* %em_objects_copy_3, i89* %em_objects_copy_4, i89* %em_objects_copy_5, i89* %em_objects_copy_6, i89* %em_objects_copy_7, [8 x %struct.TriggerObject]* %2, i89* %jet_objects_copy_0, i89* %jet_objects_copy_1, i89* %jet_objects_copy_2, i89* %jet_objects_copy_3, i89* %jet_objects_copy_4, i89* %jet_objects_copy_5, i89* %jet_objects_copy_6, i89* %jet_objects_copy_7, %"struct.ap_uint<24>"* %ht, i24* %ht_copy, i32* %num_em_clusters, i32* %num_em_clusters_copy, i32* %num_jet_clusters, i32* %num_jet_clusters_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a30a60struct.ap_uint<12>"([30 x [60 x i12]]* noalias align 512 %dst, [30 x [60 x %"struct.ap_uint<12>"]]* noalias readonly %src) unnamed_addr #1 {
entry:
  %0 = icmp eq [30 x [60 x i12]]* %dst, null
  %1 = icmp eq [30 x [60 x %"struct.ap_uint<12>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a30a60struct.ap_uint<12>"([30 x [60 x i12]]* nonnull %dst, [30 x [60 x %"struct.ap_uint<12>"]]* nonnull %src, i64 30)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a30a60struct.ap_uint<12>"([30 x [60 x i12]]* %dst, [30 x [60 x %"struct.ap_uint<12>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [30 x [60 x %"struct.ap_uint<12>"]]* %src, null
  %1 = icmp eq [30 x [60 x i12]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [30 x [60 x i12]], [30 x [60 x i12]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [30 x [60 x %"struct.ap_uint<12>"]], [30 x [60 x %"struct.ap_uint<12>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a60struct.ap_uint<12>"([60 x i12]* %3, [60 x %"struct.ap_uint<12>"]* %src.addr, i64 60)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a60struct.ap_uint<12>"([60 x i12]* %dst, [60 x %"struct.ap_uint<12>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [60 x %"struct.ap_uint<12>"]* %src, null
  %1 = icmp eq [60 x i12]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [60 x %"struct.ap_uint<12>"], [60 x %"struct.ap_uint<12>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [60 x i12], [60 x i12]* %dst, i64 0, i64 %for.loop.idx8
  %4 = bitcast i12* %src.addr.0.0.05 to i16*
  %5 = load i16, i16* %4
  %6 = trunc i16 %5 to i12
  store i12 %6, i12* %3, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a8struct.TriggerObject([8 x %struct.TriggerObject]* "orig.arg.no"="0" %dst, [8 x %struct.TriggerObject]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [8 x %struct.TriggerObject]* %src, null
  %1 = icmp eq [8 x %struct.TriggerObject]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond45 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond45, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx46 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.0.07 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast i20* %src.addr.0.0.0.07 to i24*
  %4 = load i24, i24* %3
  %5 = trunc i24 %4 to i20
  store i20 %5, i20* %dst.addr.0.0.0.08, align 4
  %src.addr.1.0.0.015 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 1, i32 0, i32 0, i32 0
  %6 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %7 = load i24, i24* %6
  %8 = trunc i24 %7 to i20
  store i20 %8, i20* %dst.addr.1.0.0.016, align 4
  %src.addr.2.0.0.023 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 2, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 2, i32 0, i32 0, i32 0
  %9 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %10 = load i8, i8* %9
  %11 = trunc i8 %10 to i6
  store i6 %11, i6* %dst.addr.2.0.0.024, align 1
  %src.addr.3.0.0.031 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 3, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 3, i32 0, i32 0, i32 0
  %12 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %13 = load i8, i8* %12
  %14 = trunc i8 %13 to i6
  store i6 %14, i6* %dst.addr.3.0.0.032, align 1
  %src.addr.4.0.0.039 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 4, i32 0, i32 0, i32 0
  %dst.addr.4.0.0.040 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 4, i32 0, i32 0, i32 0
  %15 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i4
  store i4 %17, i4* %dst.addr.4.0.0.040, align 1
  %src.addr.541 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 5
  %dst.addr.542 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 5
  %18 = load i32, i32* %src.addr.541, align 4
  store i32 %18, i32* %dst.addr.542, align 4
  %src.addr.643 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 6
  %dst.addr.644 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 6
  %19 = bitcast i1* %src.addr.643 to i8*
  %20 = load i8, i8* %19
  %21 = trunc i8 %20 to i1
  store i1 %21, i1* %dst.addr.644, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx46, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>"(i24* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<24>"* noalias readonly "unpacked"="1" %src) unnamed_addr #1 {
entry:
  %0 = icmp eq %"struct.ap_uint<24>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<24>", %"struct.ap_uint<24>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i24, i24* %src.0.0.03, align 4
  store i24 %1, i24* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512 %dst, i32* noalias readonly %src) unnamed_addr #1 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i32, i32* %src, align 4
  store i32 %3, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>.80"(%"struct.ap_uint<24>"* noalias "unpacked"="0" %dst, i24* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #1 {
entry:
  %0 = icmp eq %"struct.ap_uint<24>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<24>", %"struct.ap_uint<24>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i24, i24* %src, align 512
  store i24 %1, i24* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([30 x [60 x %"struct.ap_uint<12>"]]* noalias readonly "orig.arg.no"="0" "unpacked"="0", [30 x [60 x i12]]* noalias align 512 "orig.arg.no"="1" "unpacked"="1", [8 x %struct.TriggerObject]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i89* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_0, i89* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_1, i89* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_2, i89* noalias align 512 "orig.arg.no"="3" "unpacked"="3.3" %_3, i89* noalias align 512 "orig.arg.no"="3" "unpacked"="3.4" %_4, i89* noalias align 512 "orig.arg.no"="3" "unpacked"="3.5" %_5, i89* noalias align 512 "orig.arg.no"="3" "unpacked"="3.6" %_6, i89* noalias align 512 "orig.arg.no"="3" "unpacked"="3.7" %_7, [8 x %struct.TriggerObject]* noalias readonly "orig.arg.no"="4" "unpacked"="4", i89* noalias align 512 "orig.arg.no"="5" "unpacked"="5.0" %_01, i89* noalias align 512 "orig.arg.no"="5" "unpacked"="5.1" %_12, i89* noalias align 512 "orig.arg.no"="5" "unpacked"="5.2" %_23, i89* noalias align 512 "orig.arg.no"="5" "unpacked"="5.3" %_34, i89* noalias align 512 "orig.arg.no"="5" "unpacked"="5.4" %_45, i89* noalias align 512 "orig.arg.no"="5" "unpacked"="5.5" %_56, i89* noalias align 512 "orig.arg.no"="5" "unpacked"="5.6" %_67, i89* noalias align 512 "orig.arg.no"="5" "unpacked"="5.7" %_78, %"struct.ap_uint<24>"* noalias readonly "orig.arg.no"="6" "unpacked"="6", i24* noalias nocapture align 512 "orig.arg.no"="7" "unpacked"="7.0", i32* noalias readonly "orig.arg.no"="8" "unpacked"="8", i32* noalias align 512 "orig.arg.no"="9" "unpacked"="9", i32* noalias readonly "orig.arg.no"="10" "unpacked"="10", i32* noalias align 512 "orig.arg.no"="11" "unpacked"="11") #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a30a60struct.ap_uint<12>"([30 x [60 x i12]]* align 512 %1, [30 x [60 x %"struct.ap_uint<12>"]]* %0)
  call void @onebyonecpy_hls.p0a8struct.TriggerObject.103.106(i89* align 512 %_0, i89* align 512 %_1, i89* align 512 %_2, i89* align 512 %_3, i89* align 512 %_4, i89* align 512 %_5, i89* align 512 %_6, i89* align 512 %_7, [8 x %struct.TriggerObject]* %2)
  call void @onebyonecpy_hls.p0a8struct.TriggerObject.103.106(i89* align 512 %_01, i89* align 512 %_12, i89* align 512 %_23, i89* align 512 %_34, i89* align 512 %_45, i89* align 512 %_56, i89* align 512 %_67, i89* align 512 %_78, [8 x %struct.TriggerObject]* %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>"(i24* align 512 %5, %"struct.ap_uint<24>"* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %9, i32* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a8struct.TriggerObject.118.119([8 x %struct.TriggerObject]* "orig.arg.no"="0" %dst, %struct.TriggerObject* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, %struct.TriggerObject* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, %struct.TriggerObject* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, %struct.TriggerObject* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, %struct.TriggerObject* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, %struct.TriggerObject* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, %struct.TriggerObject* readonly "orig.arg.no"="1" "unpacked"="1.6" %src_6, %struct.TriggerObject* readonly "orig.arg.no"="1" "unpacked"="1.7" %src_7, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq %struct.TriggerObject* %src_0, null
  %1 = icmp eq [8 x %struct.TriggerObject]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond45 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond45, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  %src.addr.0.0.0.07_0 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_0, i64 0, i32 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_1 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_1, i64 0, i32 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_2 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_2, i64 0, i32 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_3 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_3, i64 0, i32 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_4 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_4, i64 0, i32 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_5 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_5, i64 0, i32 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_6 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_6, i64 0, i32 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_7 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_7, i64 0, i32 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_0 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_0, i64 0, i32 1, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_1 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_1, i64 0, i32 1, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_2 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_2, i64 0, i32 1, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_3 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_3, i64 0, i32 1, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_4 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_4, i64 0, i32 1, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_5 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_5, i64 0, i32 1, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_6 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_6, i64 0, i32 1, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_7 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_7, i64 0, i32 1, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_0 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_0, i64 0, i32 2, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_1 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_1, i64 0, i32 2, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_2 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_2, i64 0, i32 2, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_3 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_3, i64 0, i32 2, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_4 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_4, i64 0, i32 2, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_5 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_5, i64 0, i32 2, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_6 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_6, i64 0, i32 2, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_7 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_7, i64 0, i32 2, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_0 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_0, i64 0, i32 3, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_1 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_1, i64 0, i32 3, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_2 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_2, i64 0, i32 3, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_3 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_3, i64 0, i32 3, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_4 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_4, i64 0, i32 3, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_5 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_5, i64 0, i32 3, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_6 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_6, i64 0, i32 3, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_7 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_7, i64 0, i32 3, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039_0 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_0, i64 0, i32 4, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039_1 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_1, i64 0, i32 4, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039_2 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_2, i64 0, i32 4, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039_3 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_3, i64 0, i32 4, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039_4 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_4, i64 0, i32 4, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039_5 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_5, i64 0, i32 4, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039_6 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_6, i64 0, i32 4, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039_7 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_7, i64 0, i32 4, i32 0, i32 0, i32 0
  %src.addr.541_0 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_0, i64 0, i32 5
  %src.addr.541_1 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_1, i64 0, i32 5
  %src.addr.541_2 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_2, i64 0, i32 5
  %src.addr.541_3 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_3, i64 0, i32 5
  %src.addr.541_4 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_4, i64 0, i32 5
  %src.addr.541_5 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_5, i64 0, i32 5
  %src.addr.541_6 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_6, i64 0, i32 5
  %src.addr.541_7 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_7, i64 0, i32 5
  %src.addr.643_0 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_0, i64 0, i32 6
  %src.addr.643_1 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_1, i64 0, i32 6
  %src.addr.643_2 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_2, i64 0, i32 6
  %src.addr.643_3 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_3, i64 0, i32 6
  %src.addr.643_4 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_4, i64 0, i32 6
  %src.addr.643_5 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_5, i64 0, i32 6
  %src.addr.643_6 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_6, i64 0, i32 6
  %src.addr.643_7 = getelementptr %struct.TriggerObject, %struct.TriggerObject* %src_7, i64 0, i32 6
  br label %for.loop

for.loop:                                         ; preds = %src.addr.643.exit, %for.loop.lr.ph
  %for.loop.idx46 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.643.exit ]
  %dst.addr.0.0.0.08 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 1, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 2, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 3, i32 0, i32 0, i32 0
  %dst.addr.4.0.0.040 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 4, i32 0, i32 0, i32 0
  %dst.addr.542 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 5
  %dst.addr.644 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 6
  switch i64 %for.loop.idx46, label %src.addr.643.case.7 [
    i64 0, label %src.addr.643.case.0
    i64 1, label %src.addr.643.case.1
    i64 2, label %src.addr.643.case.2
    i64 3, label %src.addr.643.case.3
    i64 4, label %src.addr.643.case.4
    i64 5, label %src.addr.643.case.5
    i64 6, label %src.addr.643.case.6
  ]

src.addr.643.case.0:                              ; preds = %for.loop
  %3 = bitcast i20* %src.addr.0.0.0.07_0 to i24*
  %4 = load i24, i24* %3
  %5 = trunc i24 %4 to i20
  store i20 %5, i20* %dst.addr.0.0.0.08, align 4
  %6 = bitcast i20* %src.addr.1.0.0.015_0 to i24*
  %7 = load i24, i24* %6
  %8 = trunc i24 %7 to i20
  store i20 %8, i20* %dst.addr.1.0.0.016, align 4
  %9 = bitcast i6* %src.addr.2.0.0.023_0 to i8*
  %10 = load i8, i8* %9
  %11 = trunc i8 %10 to i6
  store i6 %11, i6* %dst.addr.2.0.0.024, align 1
  %12 = bitcast i6* %src.addr.3.0.0.031_0 to i8*
  %13 = load i8, i8* %12
  %14 = trunc i8 %13 to i6
  store i6 %14, i6* %dst.addr.3.0.0.032, align 1
  %15 = bitcast i4* %src.addr.4.0.0.039_0 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i4
  store i4 %17, i4* %dst.addr.4.0.0.040, align 1
  %_033 = load i32, i32* %src.addr.541_0, align 4
  store i32 %_033, i32* %dst.addr.542, align 4
  %18 = bitcast i1* %src.addr.643_0 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i1
  br label %src.addr.643.exit

src.addr.643.case.1:                              ; preds = %for.loop
  %21 = bitcast i20* %src.addr.0.0.0.07_1 to i24*
  %22 = load i24, i24* %21
  %23 = trunc i24 %22 to i20
  store i20 %23, i20* %dst.addr.0.0.0.08, align 4
  %24 = bitcast i20* %src.addr.1.0.0.015_1 to i24*
  %25 = load i24, i24* %24
  %26 = trunc i24 %25 to i20
  store i20 %26, i20* %dst.addr.1.0.0.016, align 4
  %27 = bitcast i6* %src.addr.2.0.0.023_1 to i8*
  %28 = load i8, i8* %27
  %29 = trunc i8 %28 to i6
  store i6 %29, i6* %dst.addr.2.0.0.024, align 1
  %30 = bitcast i6* %src.addr.3.0.0.031_1 to i8*
  %31 = load i8, i8* %30
  %32 = trunc i8 %31 to i6
  store i6 %32, i6* %dst.addr.3.0.0.032, align 1
  %33 = bitcast i4* %src.addr.4.0.0.039_1 to i8*
  %34 = load i8, i8* %33
  %35 = trunc i8 %34 to i4
  store i4 %35, i4* %dst.addr.4.0.0.040, align 1
  %_134 = load i32, i32* %src.addr.541_1, align 4
  store i32 %_134, i32* %dst.addr.542, align 4
  %36 = bitcast i1* %src.addr.643_1 to i8*
  %37 = load i8, i8* %36
  %38 = trunc i8 %37 to i1
  br label %src.addr.643.exit

src.addr.643.case.2:                              ; preds = %for.loop
  %39 = bitcast i20* %src.addr.0.0.0.07_2 to i24*
  %40 = load i24, i24* %39
  %41 = trunc i24 %40 to i20
  store i20 %41, i20* %dst.addr.0.0.0.08, align 4
  %42 = bitcast i20* %src.addr.1.0.0.015_2 to i24*
  %43 = load i24, i24* %42
  %44 = trunc i24 %43 to i20
  store i20 %44, i20* %dst.addr.1.0.0.016, align 4
  %45 = bitcast i6* %src.addr.2.0.0.023_2 to i8*
  %46 = load i8, i8* %45
  %47 = trunc i8 %46 to i6
  store i6 %47, i6* %dst.addr.2.0.0.024, align 1
  %48 = bitcast i6* %src.addr.3.0.0.031_2 to i8*
  %49 = load i8, i8* %48
  %50 = trunc i8 %49 to i6
  store i6 %50, i6* %dst.addr.3.0.0.032, align 1
  %51 = bitcast i4* %src.addr.4.0.0.039_2 to i8*
  %52 = load i8, i8* %51
  %53 = trunc i8 %52 to i4
  store i4 %53, i4* %dst.addr.4.0.0.040, align 1
  %_235 = load i32, i32* %src.addr.541_2, align 4
  store i32 %_235, i32* %dst.addr.542, align 4
  %54 = bitcast i1* %src.addr.643_2 to i8*
  %55 = load i8, i8* %54
  %56 = trunc i8 %55 to i1
  br label %src.addr.643.exit

src.addr.643.case.3:                              ; preds = %for.loop
  %57 = bitcast i20* %src.addr.0.0.0.07_3 to i24*
  %58 = load i24, i24* %57
  %59 = trunc i24 %58 to i20
  store i20 %59, i20* %dst.addr.0.0.0.08, align 4
  %60 = bitcast i20* %src.addr.1.0.0.015_3 to i24*
  %61 = load i24, i24* %60
  %62 = trunc i24 %61 to i20
  store i20 %62, i20* %dst.addr.1.0.0.016, align 4
  %63 = bitcast i6* %src.addr.2.0.0.023_3 to i8*
  %64 = load i8, i8* %63
  %65 = trunc i8 %64 to i6
  store i6 %65, i6* %dst.addr.2.0.0.024, align 1
  %66 = bitcast i6* %src.addr.3.0.0.031_3 to i8*
  %67 = load i8, i8* %66
  %68 = trunc i8 %67 to i6
  store i6 %68, i6* %dst.addr.3.0.0.032, align 1
  %69 = bitcast i4* %src.addr.4.0.0.039_3 to i8*
  %70 = load i8, i8* %69
  %71 = trunc i8 %70 to i4
  store i4 %71, i4* %dst.addr.4.0.0.040, align 1
  %_336 = load i32, i32* %src.addr.541_3, align 4
  store i32 %_336, i32* %dst.addr.542, align 4
  %72 = bitcast i1* %src.addr.643_3 to i8*
  %73 = load i8, i8* %72
  %74 = trunc i8 %73 to i1
  br label %src.addr.643.exit

src.addr.643.case.4:                              ; preds = %for.loop
  %75 = bitcast i20* %src.addr.0.0.0.07_4 to i24*
  %76 = load i24, i24* %75
  %77 = trunc i24 %76 to i20
  store i20 %77, i20* %dst.addr.0.0.0.08, align 4
  %78 = bitcast i20* %src.addr.1.0.0.015_4 to i24*
  %79 = load i24, i24* %78
  %80 = trunc i24 %79 to i20
  store i20 %80, i20* %dst.addr.1.0.0.016, align 4
  %81 = bitcast i6* %src.addr.2.0.0.023_4 to i8*
  %82 = load i8, i8* %81
  %83 = trunc i8 %82 to i6
  store i6 %83, i6* %dst.addr.2.0.0.024, align 1
  %84 = bitcast i6* %src.addr.3.0.0.031_4 to i8*
  %85 = load i8, i8* %84
  %86 = trunc i8 %85 to i6
  store i6 %86, i6* %dst.addr.3.0.0.032, align 1
  %87 = bitcast i4* %src.addr.4.0.0.039_4 to i8*
  %88 = load i8, i8* %87
  %89 = trunc i8 %88 to i4
  store i4 %89, i4* %dst.addr.4.0.0.040, align 1
  %_437 = load i32, i32* %src.addr.541_4, align 4
  store i32 %_437, i32* %dst.addr.542, align 4
  %90 = bitcast i1* %src.addr.643_4 to i8*
  %91 = load i8, i8* %90
  %92 = trunc i8 %91 to i1
  br label %src.addr.643.exit

src.addr.643.case.5:                              ; preds = %for.loop
  %93 = bitcast i20* %src.addr.0.0.0.07_5 to i24*
  %94 = load i24, i24* %93
  %95 = trunc i24 %94 to i20
  store i20 %95, i20* %dst.addr.0.0.0.08, align 4
  %96 = bitcast i20* %src.addr.1.0.0.015_5 to i24*
  %97 = load i24, i24* %96
  %98 = trunc i24 %97 to i20
  store i20 %98, i20* %dst.addr.1.0.0.016, align 4
  %99 = bitcast i6* %src.addr.2.0.0.023_5 to i8*
  %100 = load i8, i8* %99
  %101 = trunc i8 %100 to i6
  store i6 %101, i6* %dst.addr.2.0.0.024, align 1
  %102 = bitcast i6* %src.addr.3.0.0.031_5 to i8*
  %103 = load i8, i8* %102
  %104 = trunc i8 %103 to i6
  store i6 %104, i6* %dst.addr.3.0.0.032, align 1
  %105 = bitcast i4* %src.addr.4.0.0.039_5 to i8*
  %106 = load i8, i8* %105
  %107 = trunc i8 %106 to i4
  store i4 %107, i4* %dst.addr.4.0.0.040, align 1
  %_538 = load i32, i32* %src.addr.541_5, align 4
  store i32 %_538, i32* %dst.addr.542, align 4
  %108 = bitcast i1* %src.addr.643_5 to i8*
  %109 = load i8, i8* %108
  %110 = trunc i8 %109 to i1
  br label %src.addr.643.exit

src.addr.643.case.6:                              ; preds = %for.loop
  %111 = bitcast i20* %src.addr.0.0.0.07_6 to i24*
  %112 = load i24, i24* %111
  %113 = trunc i24 %112 to i20
  store i20 %113, i20* %dst.addr.0.0.0.08, align 4
  %114 = bitcast i20* %src.addr.1.0.0.015_6 to i24*
  %115 = load i24, i24* %114
  %116 = trunc i24 %115 to i20
  store i20 %116, i20* %dst.addr.1.0.0.016, align 4
  %117 = bitcast i6* %src.addr.2.0.0.023_6 to i8*
  %118 = load i8, i8* %117
  %119 = trunc i8 %118 to i6
  store i6 %119, i6* %dst.addr.2.0.0.024, align 1
  %120 = bitcast i6* %src.addr.3.0.0.031_6 to i8*
  %121 = load i8, i8* %120
  %122 = trunc i8 %121 to i6
  store i6 %122, i6* %dst.addr.3.0.0.032, align 1
  %123 = bitcast i4* %src.addr.4.0.0.039_6 to i8*
  %124 = load i8, i8* %123
  %125 = trunc i8 %124 to i4
  store i4 %125, i4* %dst.addr.4.0.0.040, align 1
  %_639 = load i32, i32* %src.addr.541_6, align 4
  store i32 %_639, i32* %dst.addr.542, align 4
  %126 = bitcast i1* %src.addr.643_6 to i8*
  %127 = load i8, i8* %126
  %128 = trunc i8 %127 to i1
  br label %src.addr.643.exit

src.addr.643.case.7:                              ; preds = %for.loop
  %129 = icmp eq i64 %for.loop.idx46, 7
  call void @llvm.assume(i1 %129)
  %130 = bitcast i20* %src.addr.0.0.0.07_7 to i24*
  %131 = load i24, i24* %130
  %132 = trunc i24 %131 to i20
  store i20 %132, i20* %dst.addr.0.0.0.08, align 4
  %133 = bitcast i20* %src.addr.1.0.0.015_7 to i24*
  %134 = load i24, i24* %133
  %135 = trunc i24 %134 to i20
  store i20 %135, i20* %dst.addr.1.0.0.016, align 4
  %136 = bitcast i6* %src.addr.2.0.0.023_7 to i8*
  %137 = load i8, i8* %136
  %138 = trunc i8 %137 to i6
  store i6 %138, i6* %dst.addr.2.0.0.024, align 1
  %139 = bitcast i6* %src.addr.3.0.0.031_7 to i8*
  %140 = load i8, i8* %139
  %141 = trunc i8 %140 to i6
  store i6 %141, i6* %dst.addr.3.0.0.032, align 1
  %142 = bitcast i4* %src.addr.4.0.0.039_7 to i8*
  %143 = load i8, i8* %142
  %144 = trunc i8 %143 to i4
  store i4 %144, i4* %dst.addr.4.0.0.040, align 1
  %_740 = load i32, i32* %src.addr.541_7, align 4
  store i32 %_740, i32* %dst.addr.542, align 4
  %145 = bitcast i1* %src.addr.643_7 to i8*
  %146 = load i8, i8* %145
  %147 = trunc i8 %146 to i1
  br label %src.addr.643.exit

src.addr.643.exit:                                ; preds = %src.addr.643.case.7, %src.addr.643.case.6, %src.addr.643.case.5, %src.addr.643.case.4, %src.addr.643.case.3, %src.addr.643.case.2, %src.addr.643.case.1, %src.addr.643.case.0
  %148 = phi i1 [ %20, %src.addr.643.case.0 ], [ %38, %src.addr.643.case.1 ], [ %56, %src.addr.643.case.2 ], [ %74, %src.addr.643.case.3 ], [ %92, %src.addr.643.case.4 ], [ %110, %src.addr.643.case.5 ], [ %128, %src.addr.643.case.6 ], [ %147, %src.addr.643.case.7 ]
  store i1 %148, i1* %dst.addr.644, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx46, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.643.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([30 x [60 x %"struct.ap_uint<12>"]]* noalias "orig.arg.no"="0" "unpacked"="0", [30 x [60 x i12]]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1", [8 x %struct.TriggerObject]* noalias "orig.arg.no"="2" "unpacked"="2", i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_0, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_1, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_2, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_3, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4" %_4, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5" %_5, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.6" %_6, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.7" %_7, [8 x %struct.TriggerObject]* noalias "orig.arg.no"="4" "unpacked"="4", i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_01, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_12, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2" %_23, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3" %_34, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4" %_45, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5" %_56, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.6" %_67, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.7" %_78, %"struct.ap_uint<24>"* noalias "orig.arg.no"="6" "unpacked"="6", i24* noalias nocapture readonly align 512 "orig.arg.no"="7" "unpacked"="7.0", i32* noalias "orig.arg.no"="8" "unpacked"="8", i32* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9", i32* noalias "orig.arg.no"="10" "unpacked"="10", i32* noalias readonly align 512 "orig.arg.no"="11" "unpacked"="11") #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a30a60struct.ap_uint<12>.321"([30 x [60 x %"struct.ap_uint<12>"]]* %0, [30 x [60 x i12]]* align 512 %1)
  call void @onebyonecpy_hls.p0a8struct.TriggerObject.117.120([8 x %struct.TriggerObject]* %2, i89* align 512 %_0, i89* align 512 %_1, i89* align 512 %_2, i89* align 512 %_3, i89* align 512 %_4, i89* align 512 %_5, i89* align 512 %_6, i89* align 512 %_7)
  call void @onebyonecpy_hls.p0a8struct.TriggerObject.117.120([8 x %struct.TriggerObject]* %3, i89* align 512 %_01, i89* align 512 %_12, i89* align 512 %_23, i89* align 512 %_34, i89* align 512 %_45, i89* align 512 %_56, i89* align 512 %_67, i89* align 512 %_78)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>.80"(%"struct.ap_uint<24>"* %4, i24* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a8struct.TriggerObject.103.106(i89* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i89* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i89* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i89* noalias align 512 "orig.arg.no"="0" "unpacked"="0.3" %dst_3, i89* noalias align 512 "orig.arg.no"="0" "unpacked"="0.4" %dst_4, i89* noalias align 512 "orig.arg.no"="0" "unpacked"="0.5" %dst_5, i89* noalias align 512 "orig.arg.no"="0" "unpacked"="0.6" %dst_6, i89* noalias align 512 "orig.arg.no"="0" "unpacked"="0.7" %dst_7, [8 x %struct.TriggerObject]* noalias readonly "orig.arg.no"="1" %src) #1 {
entry:
  %0 = icmp eq i89* %dst_0, null
  %1 = icmp eq [8 x %struct.TriggerObject]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a8struct.TriggerObject.104.105.142.149.176.183.210.217.244.251(i89* nonnull %dst_0, i89* %dst_1, i89* %dst_2, i89* %dst_3, i89* %dst_4, i89* %dst_5, i89* %dst_6, i89* %dst_7, [8 x %struct.TriggerObject]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a8struct.TriggerObject.104.105.142.149.176.183.210.217.244.251(i89* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i89* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i89* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, i89* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, i89* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, i89* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, i89* "orig.arg.no"="0" "unpacked"="0.6" %dst_6, i89* "orig.arg.no"="0" "unpacked"="0.7" %dst_7, [8 x %struct.TriggerObject]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [8 x %struct.TriggerObject]* %src, null
  %1 = icmp eq i89* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond45 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond45, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.644.exit, %for.loop.lr.ph
  %for.loop.idx46 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.644.exit ]
  %src.addr.0.0.0.07 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 0, i32 0, i32 0, i32 0
  %3 = bitcast i20* %src.addr.0.0.0.07 to i24*
  %4 = load i24, i24* %3
  %5 = trunc i24 %4 to i20
  %src.addr.1.0.0.015 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 1, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 2, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 3, i32 0, i32 0, i32 0
  %src.addr.4.0.0.039 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 4, i32 0, i32 0, i32 0
  %src.addr.541 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 5
  %src.addr.643 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 6
  %6 = zext i20 %5 to i89
  switch i64 %for.loop.idx46, label %dst.addr.644.case.7 [
    i64 0, label %dst.addr.644.case.0
    i64 1, label %dst.addr.644.case.1
    i64 2, label %dst.addr.644.case.2
    i64 3, label %dst.addr.644.case.3
    i64 4, label %dst.addr.644.case.4
    i64 5, label %dst.addr.644.case.5
    i64 6, label %dst.addr.644.case.6
  ]

dst.addr.644.case.0:                              ; preds = %for.loop
  %7 = bitcast i89* %dst_0 to i96*
  %8 = load i96, i96* %7
  %9 = trunc i96 %8 to i89
  %10 = and i89 %9, -1048576
  %.partset55 = or i89 %10, %6
  store i89 %.partset55, i89* %dst_0, align 16
  %11 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %12 = load i24, i24* %11
  %13 = trunc i24 %12 to i20
  %14 = zext i20 %13 to i89
  %15 = shl i89 %14, 20
  %16 = and i89 %.partset55, -1099510579201
  %.partset54 = or i89 %16, %15
  store i89 %.partset54, i89* %dst_0, align 16
  %17 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %18 = load i8, i8* %17
  %19 = trunc i8 %18 to i6
  %20 = zext i6 %19 to i89
  %21 = shl i89 %20, 40
  %22 = and i89 %.partset54, -69269232549889
  %.partset53 = or i89 %22, %21
  store i89 %.partset53, i89* %dst_0, align 16
  %23 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i6
  %26 = zext i6 %25 to i89
  %27 = shl i89 %26, 46
  %28 = and i89 %.partset53, -4433230883192833
  %.partset52 = or i89 %28, %27
  store i89 %.partset52, i89* %dst_0, align 16
  %29 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i4
  %32 = zext i4 %31 to i89
  %33 = shl i89 %32, 52
  %34 = and i89 %.partset52, -67553994410557441
  %.partset51 = or i89 %34, %33
  store i89 %.partset51, i89* %dst_0, align 16
  %35 = load i32, i32* %src.addr.541, align 4
  %36 = zext i32 %35 to i89
  %37 = shl i89 %36, 56
  %38 = and i89 %.partset51, -309485009749287474686853121
  %.partset50 = or i89 %38, %37
  store i89 %.partset50, i89* %dst_0, align 16
  %39 = bitcast i1* %src.addr.643 to i8*
  %40 = load i8, i8* %39
  %41 = trunc i8 %40 to i1
  %42 = zext i1 %41 to i89
  %43 = shl i89 %42, 88
  %44 = and i89 %.partset50, 309485009821345068724781055
  %.partset49 = or i89 %44, %43
  store i89 %.partset49, i89* %dst_0, align 16
  br label %dst.addr.644.exit

dst.addr.644.case.1:                              ; preds = %for.loop
  %45 = bitcast i89* %dst_1 to i96*
  %46 = load i96, i96* %45
  %47 = trunc i96 %46 to i89
  %48 = and i89 %47, -1048576
  %.partset48 = or i89 %48, %6
  store i89 %.partset48, i89* %dst_1, align 16
  %49 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %50 = load i24, i24* %49
  %51 = trunc i24 %50 to i20
  %52 = zext i20 %51 to i89
  %53 = shl i89 %52, 20
  %54 = and i89 %.partset48, -1099510579201
  %.partset47 = or i89 %54, %53
  store i89 %.partset47, i89* %dst_1, align 16
  %55 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %56 = load i8, i8* %55
  %57 = trunc i8 %56 to i6
  %58 = zext i6 %57 to i89
  %59 = shl i89 %58, 40
  %60 = and i89 %.partset47, -69269232549889
  %.partset46 = or i89 %60, %59
  store i89 %.partset46, i89* %dst_1, align 16
  %61 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %62 = load i8, i8* %61
  %63 = trunc i8 %62 to i6
  %64 = zext i6 %63 to i89
  %65 = shl i89 %64, 46
  %66 = and i89 %.partset46, -4433230883192833
  %.partset45 = or i89 %66, %65
  store i89 %.partset45, i89* %dst_1, align 16
  %67 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %68 = load i8, i8* %67
  %69 = trunc i8 %68 to i4
  %70 = zext i4 %69 to i89
  %71 = shl i89 %70, 52
  %72 = and i89 %.partset45, -67553994410557441
  %.partset44 = or i89 %72, %71
  store i89 %.partset44, i89* %dst_1, align 16
  %73 = load i32, i32* %src.addr.541, align 4
  %74 = zext i32 %73 to i89
  %75 = shl i89 %74, 56
  %76 = and i89 %.partset44, -309485009749287474686853121
  %.partset43 = or i89 %76, %75
  store i89 %.partset43, i89* %dst_1, align 16
  %77 = bitcast i1* %src.addr.643 to i8*
  %78 = load i8, i8* %77
  %79 = trunc i8 %78 to i1
  %80 = zext i1 %79 to i89
  %81 = shl i89 %80, 88
  %82 = and i89 %.partset43, 309485009821345068724781055
  %.partset42 = or i89 %82, %81
  store i89 %.partset42, i89* %dst_1, align 16
  br label %dst.addr.644.exit

dst.addr.644.case.2:                              ; preds = %for.loop
  %83 = bitcast i89* %dst_2 to i96*
  %84 = load i96, i96* %83
  %85 = trunc i96 %84 to i89
  %86 = and i89 %85, -1048576
  %.partset41 = or i89 %86, %6
  store i89 %.partset41, i89* %dst_2, align 16
  %87 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %88 = load i24, i24* %87
  %89 = trunc i24 %88 to i20
  %90 = zext i20 %89 to i89
  %91 = shl i89 %90, 20
  %92 = and i89 %.partset41, -1099510579201
  %.partset40 = or i89 %92, %91
  store i89 %.partset40, i89* %dst_2, align 16
  %93 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %94 = load i8, i8* %93
  %95 = trunc i8 %94 to i6
  %96 = zext i6 %95 to i89
  %97 = shl i89 %96, 40
  %98 = and i89 %.partset40, -69269232549889
  %.partset39 = or i89 %98, %97
  store i89 %.partset39, i89* %dst_2, align 16
  %99 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %100 = load i8, i8* %99
  %101 = trunc i8 %100 to i6
  %102 = zext i6 %101 to i89
  %103 = shl i89 %102, 46
  %104 = and i89 %.partset39, -4433230883192833
  %.partset38 = or i89 %104, %103
  store i89 %.partset38, i89* %dst_2, align 16
  %105 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %106 = load i8, i8* %105
  %107 = trunc i8 %106 to i4
  %108 = zext i4 %107 to i89
  %109 = shl i89 %108, 52
  %110 = and i89 %.partset38, -67553994410557441
  %.partset37 = or i89 %110, %109
  store i89 %.partset37, i89* %dst_2, align 16
  %111 = load i32, i32* %src.addr.541, align 4
  %112 = zext i32 %111 to i89
  %113 = shl i89 %112, 56
  %114 = and i89 %.partset37, -309485009749287474686853121
  %.partset36 = or i89 %114, %113
  store i89 %.partset36, i89* %dst_2, align 16
  %115 = bitcast i1* %src.addr.643 to i8*
  %116 = load i8, i8* %115
  %117 = trunc i8 %116 to i1
  %118 = zext i1 %117 to i89
  %119 = shl i89 %118, 88
  %120 = and i89 %.partset36, 309485009821345068724781055
  %.partset35 = or i89 %120, %119
  store i89 %.partset35, i89* %dst_2, align 16
  br label %dst.addr.644.exit

dst.addr.644.case.3:                              ; preds = %for.loop
  %121 = bitcast i89* %dst_3 to i96*
  %122 = load i96, i96* %121
  %123 = trunc i96 %122 to i89
  %124 = and i89 %123, -1048576
  %.partset34 = or i89 %124, %6
  store i89 %.partset34, i89* %dst_3, align 16
  %125 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %126 = load i24, i24* %125
  %127 = trunc i24 %126 to i20
  %128 = zext i20 %127 to i89
  %129 = shl i89 %128, 20
  %130 = and i89 %.partset34, -1099510579201
  %.partset33 = or i89 %130, %129
  store i89 %.partset33, i89* %dst_3, align 16
  %131 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %132 = load i8, i8* %131
  %133 = trunc i8 %132 to i6
  %134 = zext i6 %133 to i89
  %135 = shl i89 %134, 40
  %136 = and i89 %.partset33, -69269232549889
  %.partset32 = or i89 %136, %135
  store i89 %.partset32, i89* %dst_3, align 16
  %137 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %138 = load i8, i8* %137
  %139 = trunc i8 %138 to i6
  %140 = zext i6 %139 to i89
  %141 = shl i89 %140, 46
  %142 = and i89 %.partset32, -4433230883192833
  %.partset31 = or i89 %142, %141
  store i89 %.partset31, i89* %dst_3, align 16
  %143 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %144 = load i8, i8* %143
  %145 = trunc i8 %144 to i4
  %146 = zext i4 %145 to i89
  %147 = shl i89 %146, 52
  %148 = and i89 %.partset31, -67553994410557441
  %.partset30 = or i89 %148, %147
  store i89 %.partset30, i89* %dst_3, align 16
  %149 = load i32, i32* %src.addr.541, align 4
  %150 = zext i32 %149 to i89
  %151 = shl i89 %150, 56
  %152 = and i89 %.partset30, -309485009749287474686853121
  %.partset29 = or i89 %152, %151
  store i89 %.partset29, i89* %dst_3, align 16
  %153 = bitcast i1* %src.addr.643 to i8*
  %154 = load i8, i8* %153
  %155 = trunc i8 %154 to i1
  %156 = zext i1 %155 to i89
  %157 = shl i89 %156, 88
  %158 = and i89 %.partset29, 309485009821345068724781055
  %.partset28 = or i89 %158, %157
  store i89 %.partset28, i89* %dst_3, align 16
  br label %dst.addr.644.exit

dst.addr.644.case.4:                              ; preds = %for.loop
  %159 = bitcast i89* %dst_4 to i96*
  %160 = load i96, i96* %159
  %161 = trunc i96 %160 to i89
  %162 = and i89 %161, -1048576
  %.partset27 = or i89 %162, %6
  store i89 %.partset27, i89* %dst_4, align 16
  %163 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %164 = load i24, i24* %163
  %165 = trunc i24 %164 to i20
  %166 = zext i20 %165 to i89
  %167 = shl i89 %166, 20
  %168 = and i89 %.partset27, -1099510579201
  %.partset26 = or i89 %168, %167
  store i89 %.partset26, i89* %dst_4, align 16
  %169 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %170 = load i8, i8* %169
  %171 = trunc i8 %170 to i6
  %172 = zext i6 %171 to i89
  %173 = shl i89 %172, 40
  %174 = and i89 %.partset26, -69269232549889
  %.partset25 = or i89 %174, %173
  store i89 %.partset25, i89* %dst_4, align 16
  %175 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %176 = load i8, i8* %175
  %177 = trunc i8 %176 to i6
  %178 = zext i6 %177 to i89
  %179 = shl i89 %178, 46
  %180 = and i89 %.partset25, -4433230883192833
  %.partset24 = or i89 %180, %179
  store i89 %.partset24, i89* %dst_4, align 16
  %181 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %182 = load i8, i8* %181
  %183 = trunc i8 %182 to i4
  %184 = zext i4 %183 to i89
  %185 = shl i89 %184, 52
  %186 = and i89 %.partset24, -67553994410557441
  %.partset23 = or i89 %186, %185
  store i89 %.partset23, i89* %dst_4, align 16
  %187 = load i32, i32* %src.addr.541, align 4
  %188 = zext i32 %187 to i89
  %189 = shl i89 %188, 56
  %190 = and i89 %.partset23, -309485009749287474686853121
  %.partset22 = or i89 %190, %189
  store i89 %.partset22, i89* %dst_4, align 16
  %191 = bitcast i1* %src.addr.643 to i8*
  %192 = load i8, i8* %191
  %193 = trunc i8 %192 to i1
  %194 = zext i1 %193 to i89
  %195 = shl i89 %194, 88
  %196 = and i89 %.partset22, 309485009821345068724781055
  %.partset21 = or i89 %196, %195
  store i89 %.partset21, i89* %dst_4, align 16
  br label %dst.addr.644.exit

dst.addr.644.case.5:                              ; preds = %for.loop
  %197 = bitcast i89* %dst_5 to i96*
  %198 = load i96, i96* %197
  %199 = trunc i96 %198 to i89
  %200 = and i89 %199, -1048576
  %.partset20 = or i89 %200, %6
  store i89 %.partset20, i89* %dst_5, align 16
  %201 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %202 = load i24, i24* %201
  %203 = trunc i24 %202 to i20
  %204 = zext i20 %203 to i89
  %205 = shl i89 %204, 20
  %206 = and i89 %.partset20, -1099510579201
  %.partset19 = or i89 %206, %205
  store i89 %.partset19, i89* %dst_5, align 16
  %207 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %208 = load i8, i8* %207
  %209 = trunc i8 %208 to i6
  %210 = zext i6 %209 to i89
  %211 = shl i89 %210, 40
  %212 = and i89 %.partset19, -69269232549889
  %.partset18 = or i89 %212, %211
  store i89 %.partset18, i89* %dst_5, align 16
  %213 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %214 = load i8, i8* %213
  %215 = trunc i8 %214 to i6
  %216 = zext i6 %215 to i89
  %217 = shl i89 %216, 46
  %218 = and i89 %.partset18, -4433230883192833
  %.partset17 = or i89 %218, %217
  store i89 %.partset17, i89* %dst_5, align 16
  %219 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %220 = load i8, i8* %219
  %221 = trunc i8 %220 to i4
  %222 = zext i4 %221 to i89
  %223 = shl i89 %222, 52
  %224 = and i89 %.partset17, -67553994410557441
  %.partset16 = or i89 %224, %223
  store i89 %.partset16, i89* %dst_5, align 16
  %225 = load i32, i32* %src.addr.541, align 4
  %226 = zext i32 %225 to i89
  %227 = shl i89 %226, 56
  %228 = and i89 %.partset16, -309485009749287474686853121
  %.partset15 = or i89 %228, %227
  store i89 %.partset15, i89* %dst_5, align 16
  %229 = bitcast i1* %src.addr.643 to i8*
  %230 = load i8, i8* %229
  %231 = trunc i8 %230 to i1
  %232 = zext i1 %231 to i89
  %233 = shl i89 %232, 88
  %234 = and i89 %.partset15, 309485009821345068724781055
  %.partset14 = or i89 %234, %233
  store i89 %.partset14, i89* %dst_5, align 16
  br label %dst.addr.644.exit

dst.addr.644.case.6:                              ; preds = %for.loop
  %235 = bitcast i89* %dst_6 to i96*
  %236 = load i96, i96* %235
  %237 = trunc i96 %236 to i89
  %238 = and i89 %237, -1048576
  %.partset13 = or i89 %238, %6
  store i89 %.partset13, i89* %dst_6, align 16
  %239 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %240 = load i24, i24* %239
  %241 = trunc i24 %240 to i20
  %242 = zext i20 %241 to i89
  %243 = shl i89 %242, 20
  %244 = and i89 %.partset13, -1099510579201
  %.partset12 = or i89 %244, %243
  store i89 %.partset12, i89* %dst_6, align 16
  %245 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %246 = load i8, i8* %245
  %247 = trunc i8 %246 to i6
  %248 = zext i6 %247 to i89
  %249 = shl i89 %248, 40
  %250 = and i89 %.partset12, -69269232549889
  %.partset11 = or i89 %250, %249
  store i89 %.partset11, i89* %dst_6, align 16
  %251 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %252 = load i8, i8* %251
  %253 = trunc i8 %252 to i6
  %254 = zext i6 %253 to i89
  %255 = shl i89 %254, 46
  %256 = and i89 %.partset11, -4433230883192833
  %.partset10 = or i89 %256, %255
  store i89 %.partset10, i89* %dst_6, align 16
  %257 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %258 = load i8, i8* %257
  %259 = trunc i8 %258 to i4
  %260 = zext i4 %259 to i89
  %261 = shl i89 %260, 52
  %262 = and i89 %.partset10, -67553994410557441
  %.partset9 = or i89 %262, %261
  store i89 %.partset9, i89* %dst_6, align 16
  %263 = load i32, i32* %src.addr.541, align 4
  %264 = zext i32 %263 to i89
  %265 = shl i89 %264, 56
  %266 = and i89 %.partset9, -309485009749287474686853121
  %.partset8 = or i89 %266, %265
  store i89 %.partset8, i89* %dst_6, align 16
  %267 = bitcast i1* %src.addr.643 to i8*
  %268 = load i8, i8* %267
  %269 = trunc i8 %268 to i1
  %270 = zext i1 %269 to i89
  %271 = shl i89 %270, 88
  %272 = and i89 %.partset8, 309485009821345068724781055
  %.partset7 = or i89 %272, %271
  store i89 %.partset7, i89* %dst_6, align 16
  br label %dst.addr.644.exit

dst.addr.644.case.7:                              ; preds = %for.loop
  %273 = icmp eq i64 %for.loop.idx46, 7
  call void @llvm.assume(i1 %273)
  %274 = bitcast i89* %dst_7 to i96*
  %275 = load i96, i96* %274
  %276 = trunc i96 %275 to i89
  %277 = and i89 %276, -1048576
  %.partset6 = or i89 %277, %6
  store i89 %.partset6, i89* %dst_7, align 16
  %278 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %279 = load i24, i24* %278
  %280 = trunc i24 %279 to i20
  %281 = zext i20 %280 to i89
  %282 = shl i89 %281, 20
  %283 = and i89 %.partset6, -1099510579201
  %.partset5 = or i89 %283, %282
  store i89 %.partset5, i89* %dst_7, align 16
  %284 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %285 = load i8, i8* %284
  %286 = trunc i8 %285 to i6
  %287 = zext i6 %286 to i89
  %288 = shl i89 %287, 40
  %289 = and i89 %.partset5, -69269232549889
  %.partset4 = or i89 %289, %288
  store i89 %.partset4, i89* %dst_7, align 16
  %290 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %291 = load i8, i8* %290
  %292 = trunc i8 %291 to i6
  %293 = zext i6 %292 to i89
  %294 = shl i89 %293, 46
  %295 = and i89 %.partset4, -4433230883192833
  %.partset3 = or i89 %295, %294
  store i89 %.partset3, i89* %dst_7, align 16
  %296 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %297 = load i8, i8* %296
  %298 = trunc i8 %297 to i4
  %299 = zext i4 %298 to i89
  %300 = shl i89 %299, 52
  %301 = and i89 %.partset3, -67553994410557441
  %.partset2 = or i89 %301, %300
  store i89 %.partset2, i89* %dst_7, align 16
  %302 = load i32, i32* %src.addr.541, align 4
  %303 = zext i32 %302 to i89
  %304 = shl i89 %303, 56
  %305 = and i89 %.partset2, -309485009749287474686853121
  %.partset1 = or i89 %305, %304
  store i89 %.partset1, i89* %dst_7, align 16
  %306 = bitcast i1* %src.addr.643 to i8*
  %307 = load i8, i8* %306
  %308 = trunc i8 %307 to i1
  %309 = zext i1 %308 to i89
  %310 = shl i89 %309, 88
  %311 = and i89 %.partset1, 309485009821345068724781055
  %.partset = or i89 %311, %310
  store i89 %.partset, i89* %dst_7, align 16
  br label %dst.addr.644.exit

dst.addr.644.exit:                                ; preds = %dst.addr.644.case.7, %dst.addr.644.case.6, %dst.addr.644.case.5, %dst.addr.644.case.4, %dst.addr.644.case.3, %dst.addr.644.case.2, %dst.addr.644.case.1, %dst.addr.644.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx46, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.644.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a8struct.TriggerObject.117.120([8 x %struct.TriggerObject]* noalias "orig.arg.no"="0" %dst, i89* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, i89* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, i89* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2, i89* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.3" %src_3, i89* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.4" %src_4, i89* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.5" %src_5, i89* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.6" %src_6, i89* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.7" %src_7) #1 {
entry:
  %0 = icmp eq [8 x %struct.TriggerObject]* %dst, null
  %1 = icmp eq i89* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a8struct.TriggerObject.118.119.132.159.166.193.200.227.234.261([8 x %struct.TriggerObject]* nonnull %dst, i89* nonnull %src_0, i89* %src_1, i89* %src_2, i89* %src_3, i89* %src_4, i89* %src_5, i89* %src_6, i89* %src_7, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a8struct.TriggerObject.118.119.132.159.166.193.200.227.234.261([8 x %struct.TriggerObject]* "orig.arg.no"="0" %dst, i89* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i89* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i89* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i89* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, i89* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, i89* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, i89* readonly "orig.arg.no"="1" "unpacked"="1.6" %src_6, i89* readonly "orig.arg.no"="1" "unpacked"="1.7" %src_7, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq i89* %src_0, null
  %1 = icmp eq [8 x %struct.TriggerObject]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond45 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond45, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.643.exit, %for.loop.lr.ph
  %for.loop.idx46 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.643.exit ]
  %dst.addr.0.0.0.08 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 1, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 2, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 3, i32 0, i32 0, i32 0
  %dst.addr.4.0.0.040 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 4, i32 0, i32 0, i32 0
  %dst.addr.542 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 5
  %dst.addr.644 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 6
  switch i64 %for.loop.idx46, label %src.addr.643.case.7 [
    i64 0, label %src.addr.643.case.0
    i64 1, label %src.addr.643.case.1
    i64 2, label %src.addr.643.case.2
    i64 3, label %src.addr.643.case.3
    i64 4, label %src.addr.643.case.4
    i64 5, label %src.addr.643.case.5
    i64 6, label %src.addr.643.case.6
  ]

src.addr.643.case.0:                              ; preds = %for.loop
  %3 = bitcast i89* %src_0 to i96*
  %4 = load i96, i96* %3
  %5 = trunc i96 %4 to i89
  %_0.partselect = trunc i89 %5 to i20
  store i20 %_0.partselect, i20* %dst.addr.0.0.0.08, align 4
  %6 = bitcast i89* %src_0 to i96*
  %7 = load i96, i96* %6
  %8 = trunc i96 %7 to i89
  %9 = lshr i89 %8, 20
  %_01.partselect = trunc i89 %9 to i20
  store i20 %_01.partselect, i20* %dst.addr.1.0.0.016, align 4
  %10 = bitcast i89* %src_0 to i96*
  %11 = load i96, i96* %10
  %12 = trunc i96 %11 to i89
  %13 = lshr i89 %12, 40
  %_09.partselect = trunc i89 %13 to i6
  store i6 %_09.partselect, i6* %dst.addr.2.0.0.024, align 1
  %14 = bitcast i89* %src_0 to i96*
  %15 = load i96, i96* %14
  %16 = trunc i96 %15 to i89
  %17 = lshr i89 %16, 46
  %_017.partselect = trunc i89 %17 to i6
  store i6 %_017.partselect, i6* %dst.addr.3.0.0.032, align 1
  %18 = bitcast i89* %src_0 to i96*
  %19 = load i96, i96* %18
  %20 = trunc i96 %19 to i89
  %21 = lshr i89 %20, 52
  %_025.partselect = trunc i89 %21 to i4
  store i4 %_025.partselect, i4* %dst.addr.4.0.0.040, align 1
  %22 = bitcast i89* %src_0 to i96*
  %23 = load i96, i96* %22
  %24 = trunc i96 %23 to i89
  %25 = lshr i89 %24, 56
  %_033.partselect = trunc i89 %25 to i32
  store i32 %_033.partselect, i32* %dst.addr.542, align 4
  %26 = bitcast i89* %src_0 to i96*
  %27 = load i96, i96* %26
  %28 = trunc i96 %27 to i89
  %29 = lshr i89 %28, 88
  %_041.partselect = trunc i89 %29 to i1
  br label %src.addr.643.exit

src.addr.643.case.1:                              ; preds = %for.loop
  %30 = bitcast i89* %src_1 to i96*
  %31 = load i96, i96* %30
  %32 = trunc i96 %31 to i89
  %_1.partselect = trunc i89 %32 to i20
  store i20 %_1.partselect, i20* %dst.addr.0.0.0.08, align 4
  %33 = bitcast i89* %src_1 to i96*
  %34 = load i96, i96* %33
  %35 = trunc i96 %34 to i89
  %36 = lshr i89 %35, 20
  %_12.partselect = trunc i89 %36 to i20
  store i20 %_12.partselect, i20* %dst.addr.1.0.0.016, align 4
  %37 = bitcast i89* %src_1 to i96*
  %38 = load i96, i96* %37
  %39 = trunc i96 %38 to i89
  %40 = lshr i89 %39, 40
  %_110.partselect = trunc i89 %40 to i6
  store i6 %_110.partselect, i6* %dst.addr.2.0.0.024, align 1
  %41 = bitcast i89* %src_1 to i96*
  %42 = load i96, i96* %41
  %43 = trunc i96 %42 to i89
  %44 = lshr i89 %43, 46
  %_118.partselect = trunc i89 %44 to i6
  store i6 %_118.partselect, i6* %dst.addr.3.0.0.032, align 1
  %45 = bitcast i89* %src_1 to i96*
  %46 = load i96, i96* %45
  %47 = trunc i96 %46 to i89
  %48 = lshr i89 %47, 52
  %_126.partselect = trunc i89 %48 to i4
  store i4 %_126.partselect, i4* %dst.addr.4.0.0.040, align 1
  %49 = bitcast i89* %src_1 to i96*
  %50 = load i96, i96* %49
  %51 = trunc i96 %50 to i89
  %52 = lshr i89 %51, 56
  %_134.partselect = trunc i89 %52 to i32
  store i32 %_134.partselect, i32* %dst.addr.542, align 4
  %53 = bitcast i89* %src_1 to i96*
  %54 = load i96, i96* %53
  %55 = trunc i96 %54 to i89
  %56 = lshr i89 %55, 88
  %_142.partselect = trunc i89 %56 to i1
  br label %src.addr.643.exit

src.addr.643.case.2:                              ; preds = %for.loop
  %57 = bitcast i89* %src_2 to i96*
  %58 = load i96, i96* %57
  %59 = trunc i96 %58 to i89
  %_2.partselect = trunc i89 %59 to i20
  store i20 %_2.partselect, i20* %dst.addr.0.0.0.08, align 4
  %60 = bitcast i89* %src_2 to i96*
  %61 = load i96, i96* %60
  %62 = trunc i96 %61 to i89
  %63 = lshr i89 %62, 20
  %_23.partselect = trunc i89 %63 to i20
  store i20 %_23.partselect, i20* %dst.addr.1.0.0.016, align 4
  %64 = bitcast i89* %src_2 to i96*
  %65 = load i96, i96* %64
  %66 = trunc i96 %65 to i89
  %67 = lshr i89 %66, 40
  %_211.partselect = trunc i89 %67 to i6
  store i6 %_211.partselect, i6* %dst.addr.2.0.0.024, align 1
  %68 = bitcast i89* %src_2 to i96*
  %69 = load i96, i96* %68
  %70 = trunc i96 %69 to i89
  %71 = lshr i89 %70, 46
  %_219.partselect = trunc i89 %71 to i6
  store i6 %_219.partselect, i6* %dst.addr.3.0.0.032, align 1
  %72 = bitcast i89* %src_2 to i96*
  %73 = load i96, i96* %72
  %74 = trunc i96 %73 to i89
  %75 = lshr i89 %74, 52
  %_227.partselect = trunc i89 %75 to i4
  store i4 %_227.partselect, i4* %dst.addr.4.0.0.040, align 1
  %76 = bitcast i89* %src_2 to i96*
  %77 = load i96, i96* %76
  %78 = trunc i96 %77 to i89
  %79 = lshr i89 %78, 56
  %_235.partselect = trunc i89 %79 to i32
  store i32 %_235.partselect, i32* %dst.addr.542, align 4
  %80 = bitcast i89* %src_2 to i96*
  %81 = load i96, i96* %80
  %82 = trunc i96 %81 to i89
  %83 = lshr i89 %82, 88
  %_243.partselect = trunc i89 %83 to i1
  br label %src.addr.643.exit

src.addr.643.case.3:                              ; preds = %for.loop
  %84 = bitcast i89* %src_3 to i96*
  %85 = load i96, i96* %84
  %86 = trunc i96 %85 to i89
  %_3.partselect = trunc i89 %86 to i20
  store i20 %_3.partselect, i20* %dst.addr.0.0.0.08, align 4
  %87 = bitcast i89* %src_3 to i96*
  %88 = load i96, i96* %87
  %89 = trunc i96 %88 to i89
  %90 = lshr i89 %89, 20
  %_34.partselect = trunc i89 %90 to i20
  store i20 %_34.partselect, i20* %dst.addr.1.0.0.016, align 4
  %91 = bitcast i89* %src_3 to i96*
  %92 = load i96, i96* %91
  %93 = trunc i96 %92 to i89
  %94 = lshr i89 %93, 40
  %_312.partselect = trunc i89 %94 to i6
  store i6 %_312.partselect, i6* %dst.addr.2.0.0.024, align 1
  %95 = bitcast i89* %src_3 to i96*
  %96 = load i96, i96* %95
  %97 = trunc i96 %96 to i89
  %98 = lshr i89 %97, 46
  %_320.partselect = trunc i89 %98 to i6
  store i6 %_320.partselect, i6* %dst.addr.3.0.0.032, align 1
  %99 = bitcast i89* %src_3 to i96*
  %100 = load i96, i96* %99
  %101 = trunc i96 %100 to i89
  %102 = lshr i89 %101, 52
  %_328.partselect = trunc i89 %102 to i4
  store i4 %_328.partselect, i4* %dst.addr.4.0.0.040, align 1
  %103 = bitcast i89* %src_3 to i96*
  %104 = load i96, i96* %103
  %105 = trunc i96 %104 to i89
  %106 = lshr i89 %105, 56
  %_336.partselect = trunc i89 %106 to i32
  store i32 %_336.partselect, i32* %dst.addr.542, align 4
  %107 = bitcast i89* %src_3 to i96*
  %108 = load i96, i96* %107
  %109 = trunc i96 %108 to i89
  %110 = lshr i89 %109, 88
  %_344.partselect = trunc i89 %110 to i1
  br label %src.addr.643.exit

src.addr.643.case.4:                              ; preds = %for.loop
  %111 = bitcast i89* %src_4 to i96*
  %112 = load i96, i96* %111
  %113 = trunc i96 %112 to i89
  %_4.partselect = trunc i89 %113 to i20
  store i20 %_4.partselect, i20* %dst.addr.0.0.0.08, align 4
  %114 = bitcast i89* %src_4 to i96*
  %115 = load i96, i96* %114
  %116 = trunc i96 %115 to i89
  %117 = lshr i89 %116, 20
  %_45.partselect = trunc i89 %117 to i20
  store i20 %_45.partselect, i20* %dst.addr.1.0.0.016, align 4
  %118 = bitcast i89* %src_4 to i96*
  %119 = load i96, i96* %118
  %120 = trunc i96 %119 to i89
  %121 = lshr i89 %120, 40
  %_413.partselect = trunc i89 %121 to i6
  store i6 %_413.partselect, i6* %dst.addr.2.0.0.024, align 1
  %122 = bitcast i89* %src_4 to i96*
  %123 = load i96, i96* %122
  %124 = trunc i96 %123 to i89
  %125 = lshr i89 %124, 46
  %_421.partselect = trunc i89 %125 to i6
  store i6 %_421.partselect, i6* %dst.addr.3.0.0.032, align 1
  %126 = bitcast i89* %src_4 to i96*
  %127 = load i96, i96* %126
  %128 = trunc i96 %127 to i89
  %129 = lshr i89 %128, 52
  %_429.partselect = trunc i89 %129 to i4
  store i4 %_429.partselect, i4* %dst.addr.4.0.0.040, align 1
  %130 = bitcast i89* %src_4 to i96*
  %131 = load i96, i96* %130
  %132 = trunc i96 %131 to i89
  %133 = lshr i89 %132, 56
  %_437.partselect = trunc i89 %133 to i32
  store i32 %_437.partselect, i32* %dst.addr.542, align 4
  %134 = bitcast i89* %src_4 to i96*
  %135 = load i96, i96* %134
  %136 = trunc i96 %135 to i89
  %137 = lshr i89 %136, 88
  %_445.partselect = trunc i89 %137 to i1
  br label %src.addr.643.exit

src.addr.643.case.5:                              ; preds = %for.loop
  %138 = bitcast i89* %src_5 to i96*
  %139 = load i96, i96* %138
  %140 = trunc i96 %139 to i89
  %_5.partselect = trunc i89 %140 to i20
  store i20 %_5.partselect, i20* %dst.addr.0.0.0.08, align 4
  %141 = bitcast i89* %src_5 to i96*
  %142 = load i96, i96* %141
  %143 = trunc i96 %142 to i89
  %144 = lshr i89 %143, 20
  %_56.partselect = trunc i89 %144 to i20
  store i20 %_56.partselect, i20* %dst.addr.1.0.0.016, align 4
  %145 = bitcast i89* %src_5 to i96*
  %146 = load i96, i96* %145
  %147 = trunc i96 %146 to i89
  %148 = lshr i89 %147, 40
  %_514.partselect = trunc i89 %148 to i6
  store i6 %_514.partselect, i6* %dst.addr.2.0.0.024, align 1
  %149 = bitcast i89* %src_5 to i96*
  %150 = load i96, i96* %149
  %151 = trunc i96 %150 to i89
  %152 = lshr i89 %151, 46
  %_522.partselect = trunc i89 %152 to i6
  store i6 %_522.partselect, i6* %dst.addr.3.0.0.032, align 1
  %153 = bitcast i89* %src_5 to i96*
  %154 = load i96, i96* %153
  %155 = trunc i96 %154 to i89
  %156 = lshr i89 %155, 52
  %_530.partselect = trunc i89 %156 to i4
  store i4 %_530.partselect, i4* %dst.addr.4.0.0.040, align 1
  %157 = bitcast i89* %src_5 to i96*
  %158 = load i96, i96* %157
  %159 = trunc i96 %158 to i89
  %160 = lshr i89 %159, 56
  %_538.partselect = trunc i89 %160 to i32
  store i32 %_538.partselect, i32* %dst.addr.542, align 4
  %161 = bitcast i89* %src_5 to i96*
  %162 = load i96, i96* %161
  %163 = trunc i96 %162 to i89
  %164 = lshr i89 %163, 88
  %_546.partselect = trunc i89 %164 to i1
  br label %src.addr.643.exit

src.addr.643.case.6:                              ; preds = %for.loop
  %165 = bitcast i89* %src_6 to i96*
  %166 = load i96, i96* %165
  %167 = trunc i96 %166 to i89
  %_6.partselect = trunc i89 %167 to i20
  store i20 %_6.partselect, i20* %dst.addr.0.0.0.08, align 4
  %168 = bitcast i89* %src_6 to i96*
  %169 = load i96, i96* %168
  %170 = trunc i96 %169 to i89
  %171 = lshr i89 %170, 20
  %_67.partselect = trunc i89 %171 to i20
  store i20 %_67.partselect, i20* %dst.addr.1.0.0.016, align 4
  %172 = bitcast i89* %src_6 to i96*
  %173 = load i96, i96* %172
  %174 = trunc i96 %173 to i89
  %175 = lshr i89 %174, 40
  %_615.partselect = trunc i89 %175 to i6
  store i6 %_615.partselect, i6* %dst.addr.2.0.0.024, align 1
  %176 = bitcast i89* %src_6 to i96*
  %177 = load i96, i96* %176
  %178 = trunc i96 %177 to i89
  %179 = lshr i89 %178, 46
  %_623.partselect = trunc i89 %179 to i6
  store i6 %_623.partselect, i6* %dst.addr.3.0.0.032, align 1
  %180 = bitcast i89* %src_6 to i96*
  %181 = load i96, i96* %180
  %182 = trunc i96 %181 to i89
  %183 = lshr i89 %182, 52
  %_631.partselect = trunc i89 %183 to i4
  store i4 %_631.partselect, i4* %dst.addr.4.0.0.040, align 1
  %184 = bitcast i89* %src_6 to i96*
  %185 = load i96, i96* %184
  %186 = trunc i96 %185 to i89
  %187 = lshr i89 %186, 56
  %_639.partselect = trunc i89 %187 to i32
  store i32 %_639.partselect, i32* %dst.addr.542, align 4
  %188 = bitcast i89* %src_6 to i96*
  %189 = load i96, i96* %188
  %190 = trunc i96 %189 to i89
  %191 = lshr i89 %190, 88
  %_647.partselect = trunc i89 %191 to i1
  br label %src.addr.643.exit

src.addr.643.case.7:                              ; preds = %for.loop
  %192 = icmp eq i64 %for.loop.idx46, 7
  call void @llvm.assume(i1 %192)
  %193 = bitcast i89* %src_7 to i96*
  %194 = load i96, i96* %193
  %195 = trunc i96 %194 to i89
  %_7.partselect = trunc i89 %195 to i20
  store i20 %_7.partselect, i20* %dst.addr.0.0.0.08, align 4
  %196 = bitcast i89* %src_7 to i96*
  %197 = load i96, i96* %196
  %198 = trunc i96 %197 to i89
  %199 = lshr i89 %198, 20
  %_78.partselect = trunc i89 %199 to i20
  store i20 %_78.partselect, i20* %dst.addr.1.0.0.016, align 4
  %200 = bitcast i89* %src_7 to i96*
  %201 = load i96, i96* %200
  %202 = trunc i96 %201 to i89
  %203 = lshr i89 %202, 40
  %_716.partselect = trunc i89 %203 to i6
  store i6 %_716.partselect, i6* %dst.addr.2.0.0.024, align 1
  %204 = bitcast i89* %src_7 to i96*
  %205 = load i96, i96* %204
  %206 = trunc i96 %205 to i89
  %207 = lshr i89 %206, 46
  %_724.partselect = trunc i89 %207 to i6
  store i6 %_724.partselect, i6* %dst.addr.3.0.0.032, align 1
  %208 = bitcast i89* %src_7 to i96*
  %209 = load i96, i96* %208
  %210 = trunc i96 %209 to i89
  %211 = lshr i89 %210, 52
  %_732.partselect = trunc i89 %211 to i4
  store i4 %_732.partselect, i4* %dst.addr.4.0.0.040, align 1
  %212 = bitcast i89* %src_7 to i96*
  %213 = load i96, i96* %212
  %214 = trunc i96 %213 to i89
  %215 = lshr i89 %214, 56
  %_740.partselect = trunc i89 %215 to i32
  store i32 %_740.partselect, i32* %dst.addr.542, align 4
  %216 = bitcast i89* %src_7 to i96*
  %217 = load i96, i96* %216
  %218 = trunc i96 %217 to i89
  %219 = lshr i89 %218, 88
  %_748.partselect = trunc i89 %219 to i1
  br label %src.addr.643.exit

src.addr.643.exit:                                ; preds = %src.addr.643.case.7, %src.addr.643.case.6, %src.addr.643.case.5, %src.addr.643.case.4, %src.addr.643.case.3, %src.addr.643.case.2, %src.addr.643.case.1, %src.addr.643.case.0
  %220 = phi i1 [ %_041.partselect, %src.addr.643.case.0 ], [ %_142.partselect, %src.addr.643.case.1 ], [ %_243.partselect, %src.addr.643.case.2 ], [ %_344.partselect, %src.addr.643.case.3 ], [ %_445.partselect, %src.addr.643.case.4 ], [ %_546.partselect, %src.addr.643.case.5 ], [ %_647.partselect, %src.addr.643.case.6 ], [ %_748.partselect, %src.addr.643.case.7 ]
  store i1 %220, i1* %dst.addr.644, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx46, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.643.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a30a60struct.ap_uint<12>.321"([30 x [60 x %"struct.ap_uint<12>"]]* noalias %dst, [30 x [60 x i12]]* noalias readonly align 512 %src) unnamed_addr #1 {
entry:
  %0 = icmp eq [30 x [60 x %"struct.ap_uint<12>"]]* %dst, null
  %1 = icmp eq [30 x [60 x i12]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a30a60struct.ap_uint<12>.324"([30 x [60 x %"struct.ap_uint<12>"]]* nonnull %dst, [30 x [60 x i12]]* nonnull %src, i64 30)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a30a60struct.ap_uint<12>.324"([30 x [60 x %"struct.ap_uint<12>"]]* %dst, [30 x [60 x i12]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [30 x [60 x i12]]* %src, null
  %1 = icmp eq [30 x [60 x %"struct.ap_uint<12>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [30 x [60 x %"struct.ap_uint<12>"]], [30 x [60 x %"struct.ap_uint<12>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [30 x [60 x i12]], [30 x [60 x i12]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a60struct.ap_uint<12>.327"([60 x %"struct.ap_uint<12>"]* %dst.addr, [60 x i12]* %3, i64 60)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a60struct.ap_uint<12>.327"([60 x %"struct.ap_uint<12>"]* %dst, [60 x i12]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [60 x i12]* %src, null
  %1 = icmp eq [60 x %"struct.ap_uint<12>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [60 x i12], [60 x i12]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [60 x %"struct.ap_uint<12>"], [60 x %"struct.ap_uint<12>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = bitcast i12* %3 to i16*
  %5 = load i16, i16* %4
  %6 = trunc i16 %5 to i12
  store i12 %6, i12* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_calo_trigger_em_jet_stream_ref_hw([30 x [60 x i12]]*, %"struct.ap_uint<12>"*, %"struct.ap_uint<20>"*, %"struct.ap_uint<12>"*, %"struct.ap_uint<20>"*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i24*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([30 x [60 x %"struct.ap_uint<12>"]]* noalias "orig.arg.no"="0" "unpacked"="0", [30 x [60 x i12]]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1", [8 x %struct.TriggerObject]* noalias "orig.arg.no"="2" "unpacked"="2", i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_0, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_1, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_2, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.3" %_3, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.4" %_4, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.5" %_5, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.6" %_6, i89* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.7" %_7, [8 x %struct.TriggerObject]* noalias "orig.arg.no"="4" "unpacked"="4", i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.0" %_01, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.1" %_12, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.2" %_23, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.3" %_34, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.4" %_45, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.5" %_56, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.6" %_67, i89* noalias readonly align 512 "orig.arg.no"="5" "unpacked"="5.7" %_78, %"struct.ap_uint<24>"* noalias "orig.arg.no"="6" "unpacked"="6", i24* noalias nocapture readonly align 512 "orig.arg.no"="7" "unpacked"="7.0", i32* noalias "orig.arg.no"="8" "unpacked"="8", i32* noalias readonly align 512 "orig.arg.no"="9" "unpacked"="9", i32* noalias "orig.arg.no"="10" "unpacked"="10", i32* noalias readonly align 512 "orig.arg.no"="11" "unpacked"="11") #5 {
entry:
  call void @onebyonecpy_hls.p0a8struct.TriggerObject.117.120([8 x %struct.TriggerObject]* %2, i89* align 512 %_0, i89* align 512 %_1, i89* align 512 %_2, i89* align 512 %_3, i89* align 512 %_4, i89* align 512 %_5, i89* align 512 %_6, i89* align 512 %_7)
  call void @onebyonecpy_hls.p0a8struct.TriggerObject.117.120([8 x %struct.TriggerObject]* %3, i89* align 512 %_01, i89* align 512 %_12, i89* align 512 %_23, i89* align 512 %_34, i89* align 512 %_45, i89* align 512 %_56, i89* align 512 %_67, i89* align 512 %_78)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>.80"(%"struct.ap_uint<24>"* %4, i24* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  ret void
}

define void @calo_trigger_em_jet_stream_ref_hw_stub_wrapper([30 x [60 x i12]]*, %"struct.ap_uint<12>"*, %"struct.ap_uint<20>"*, %"struct.ap_uint<12>"*, %"struct.ap_uint<20>"*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i89*, i24*, i32*, i32*) #6 {
entry:
  %24 = alloca [30 x [60 x %"struct.ap_uint<12>"]]
  %25 = alloca [8 x %struct.TriggerObject]
  %26 = alloca [8 x %struct.TriggerObject]
  %27 = alloca %"struct.ap_uint<24>"
  call void @copy_out([30 x [60 x %"struct.ap_uint<12>"]]* %24, [30 x [60 x i12]]* %0, [8 x %struct.TriggerObject]* %25, i89* %5, i89* %6, i89* %7, i89* %8, i89* %9, i89* %10, i89* %11, i89* %12, [8 x %struct.TriggerObject]* %26, i89* %13, i89* %14, i89* %15, i89* %16, i89* %17, i89* %18, i89* %19, i89* %20, %"struct.ap_uint<24>"* %27, i24* %21, i32* null, i32* %22, i32* null, i32* %23)
  %28 = bitcast [30 x [60 x %"struct.ap_uint<12>"]]* %24 to [60 x %"struct.ap_uint<12>"]*
  %29 = bitcast [8 x %struct.TriggerObject]* %25 to %struct.TriggerObject*
  %30 = bitcast [8 x %struct.TriggerObject]* %26 to %struct.TriggerObject*
  call void @calo_trigger_em_jet_stream_ref_hw_stub([60 x %"struct.ap_uint<12>"]* %28, %"struct.ap_uint<12>"* %1, %"struct.ap_uint<20>"* %2, %"struct.ap_uint<12>"* %3, %"struct.ap_uint<20>"* %4, %struct.TriggerObject* %29, %struct.TriggerObject* %30, %"struct.ap_uint<24>"* %27, i32* %22, i32* %23)
  call void @copy_in([30 x [60 x %"struct.ap_uint<12>"]]* %24, [30 x [60 x i12]]* %0, [8 x %struct.TriggerObject]* %25, i89* %5, i89* %6, i89* %7, i89* %8, i89* %9, i89* %10, i89* %11, i89* %12, [8 x %struct.TriggerObject]* %26, i89* %13, i89* %14, i89* %15, i89* %16, i89* %17, i89* %18, i89* %19, i89* %20, %"struct.ap_uint<24>"* %27, i24* %21, i32* null, i32* %22, i32* null, i32* %23)
  ret void
}

declare void @calo_trigger_em_jet_stream_ref_hw_stub([60 x %"struct.ap_uint<12>"]* noalias nocapture nonnull readonly, %"struct.ap_uint<12>"* nocapture readonly, %"struct.ap_uint<20>"* nocapture readonly, %"struct.ap_uint<12>"* nocapture readonly, %"struct.ap_uint<20>"* nocapture readonly, %struct.TriggerObject* noalias nocapture nonnull, %struct.TriggerObject* noalias nocapture nonnull, %"struct.ap_uint<24>"* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { nounwind willreturn }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !19}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"5", [8 x %struct.TriggerObject]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18}
!11 = !{!"5.0", %struct.TriggerObject* null}
!12 = !{!"5.1", %struct.TriggerObject* null}
!13 = !{!"5.2", %struct.TriggerObject* null}
!14 = !{!"5.3", %struct.TriggerObject* null}
!15 = !{!"5.4", %struct.TriggerObject* null}
!16 = !{!"5.5", %struct.TriggerObject* null}
!17 = !{!"5.6", %struct.TriggerObject* null}
!18 = !{!"5.7", %struct.TriggerObject* null}
!19 = !{!20, !8, !22}
!20 = !{!21}
!21 = !{!"6", [8 x %struct.TriggerObject]* null}
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30}
!23 = !{!"6.0", %struct.TriggerObject* null}
!24 = !{!"6.1", %struct.TriggerObject* null}
!25 = !{!"6.2", %struct.TriggerObject* null}
!26 = !{!"6.3", %struct.TriggerObject* null}
!27 = !{!"6.4", %struct.TriggerObject* null}
!28 = !{!"6.5", %struct.TriggerObject* null}
!29 = !{!"6.6", %struct.TriggerObject* null}
!30 = !{!"6.7", %struct.TriggerObject* null}
