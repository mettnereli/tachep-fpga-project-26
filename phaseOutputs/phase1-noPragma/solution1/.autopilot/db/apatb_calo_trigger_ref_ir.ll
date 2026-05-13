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

; Function Attrs: argmemonly noinline willreturn
define void @apatb_calo_trigger_ref_ir([60 x %"struct.ap_uint<12>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="30" %grid, %"struct.ap_uint<12>"* nocapture readonly %seed_threshold, %"struct.ap_uint<20>"* nocapture readonly %cluster_threshold, %struct.TriggerObject* noalias nocapture nonnull "fpga.decayed.dim.hint"="8" %objects, %"struct.ap_uint<24>"* noalias nocapture nonnull %ht, i32* noalias nocapture nonnull %num_clusters) local_unnamed_addr #0 {
entry:
  %grid_copy = alloca [30 x [60 x i12]], align 512
  %objects_copy = alloca [8 x i89], align 512
  %ht_copy = alloca i24, align 512
  %num_clusters_copy = alloca i32, align 512
  %0 = bitcast [60 x %"struct.ap_uint<12>"]* %grid to [30 x [60 x %"struct.ap_uint<12>"]]*
  %1 = bitcast %struct.TriggerObject* %objects to [8 x %struct.TriggerObject]*
  call fastcc void @copy_in([30 x [60 x %"struct.ap_uint<12>"]]* nonnull %0, [30 x [60 x i12]]* nonnull align 512 %grid_copy, [8 x %struct.TriggerObject]* nonnull %1, [8 x i89]* nonnull align 512 %objects_copy, %"struct.ap_uint<24>"* nonnull %ht, i24* nonnull align 512 %ht_copy, i32* nonnull %num_clusters, i32* nonnull align 512 %num_clusters_copy)
  call void @apatb_calo_trigger_ref_hw([30 x [60 x i12]]* %grid_copy, %"struct.ap_uint<12>"* %seed_threshold, %"struct.ap_uint<20>"* %cluster_threshold, [8 x i89]* %objects_copy, i24* %ht_copy, i32* %num_clusters_copy)
  call void @copy_back([30 x [60 x %"struct.ap_uint<12>"]]* %0, [30 x [60 x i12]]* %grid_copy, [8 x %struct.TriggerObject]* %1, [8 x i89]* %objects_copy, %"struct.ap_uint<24>"* %ht, i24* %ht_copy, i32* %num_clusters, i32* %num_clusters_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([30 x [60 x %"struct.ap_uint<12>"]]* noalias readonly "unpacked"="0", [30 x [60 x i12]]* noalias align 512 "unpacked"="1", [8 x %struct.TriggerObject]* noalias readonly "unpacked"="2", [8 x i89]* noalias align 512 "unpacked"="3", %"struct.ap_uint<24>"* noalias readonly "unpacked"="4", i24* noalias nocapture align 512 "unpacked"="5.0", i32* noalias readonly "unpacked"="6", i32* noalias align 512 "unpacked"="7") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a30a60struct.ap_uint<12>"([30 x [60 x i12]]* align 512 %1, [30 x [60 x %"struct.ap_uint<12>"]]* %0)
  call fastcc void @onebyonecpy_hls.p0a8struct.TriggerObject.97([8 x i89]* align 512 %3, [8 x %struct.TriggerObject]* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>"(i24* align 512 %5, %"struct.ap_uint<24>"* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a30a60struct.ap_uint<12>"([30 x [60 x i12]]* noalias align 512 %dst, [30 x [60 x %"struct.ap_uint<12>"]]* noalias readonly %src) unnamed_addr #2 {
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
define void @"arraycpy_hls.p0a30a60struct.ap_uint<12>"([30 x [60 x i12]]* %dst, [30 x [60 x %"struct.ap_uint<12>"]]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
define void @"arraycpy_hls.p0a60struct.ap_uint<12>"([60 x i12]* %dst, [60 x %"struct.ap_uint<12>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
define internal fastcc void @onebyonecpy_hls.p0a8struct.TriggerObject([8 x %struct.TriggerObject]* noalias %dst, [8 x i89]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8 x %struct.TriggerObject]* %dst, null
  %1 = icmp eq [8 x i89]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a8struct.TriggerObject([8 x %struct.TriggerObject]* nonnull %dst, [8 x i89]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a8struct.TriggerObject([8 x %struct.TriggerObject]* %dst, [8 x i89]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8 x i89]* %src, null
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
  %3 = getelementptr [8 x i89], [8 x i89]* %src, i64 0, i64 %for.loop.idx46
  %dst.addr.0.0.0.08 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 0, i32 0, i32 0, i32 0
  %4 = bitcast i89* %3 to i96*
  %5 = load i96, i96* %4
  %6 = trunc i96 %5 to i89
  %.partselect6 = trunc i89 %6 to i20
  store i20 %.partselect6, i20* %dst.addr.0.0.0.08, align 4
  %dst.addr.1.0.0.016 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 1, i32 0, i32 0, i32 0
  %7 = bitcast i89* %3 to i96*
  %8 = load i96, i96* %7
  %9 = trunc i96 %8 to i89
  %10 = lshr i89 %9, 20
  %.partselect5 = trunc i89 %10 to i20
  store i20 %.partselect5, i20* %dst.addr.1.0.0.016, align 4
  %dst.addr.2.0.0.024 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 2, i32 0, i32 0, i32 0
  %11 = bitcast i89* %3 to i96*
  %12 = load i96, i96* %11
  %13 = trunc i96 %12 to i89
  %14 = lshr i89 %13, 40
  %.partselect4 = trunc i89 %14 to i6
  store i6 %.partselect4, i6* %dst.addr.2.0.0.024, align 1
  %dst.addr.3.0.0.032 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 3, i32 0, i32 0, i32 0
  %15 = bitcast i89* %3 to i96*
  %16 = load i96, i96* %15
  %17 = trunc i96 %16 to i89
  %18 = lshr i89 %17, 46
  %.partselect3 = trunc i89 %18 to i6
  store i6 %.partselect3, i6* %dst.addr.3.0.0.032, align 1
  %dst.addr.4.0.0.040 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 4, i32 0, i32 0, i32 0
  %19 = bitcast i89* %3 to i96*
  %20 = load i96, i96* %19
  %21 = trunc i96 %20 to i89
  %22 = lshr i89 %21, 52
  %.partselect2 = trunc i89 %22 to i4
  store i4 %.partselect2, i4* %dst.addr.4.0.0.040, align 1
  %dst.addr.542 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 5
  %23 = bitcast i89* %3 to i96*
  %24 = load i96, i96* %23
  %25 = trunc i96 %24 to i89
  %26 = lshr i89 %25, 56
  %.partselect1 = trunc i89 %26 to i32
  store i32 %.partselect1, i32* %dst.addr.542, align 4
  %dst.addr.644 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %dst, i64 0, i64 %for.loop.idx46, i32 6
  %27 = bitcast i89* %3 to i96*
  %28 = load i96, i96* %27
  %29 = trunc i96 %28 to i89
  %30 = lshr i89 %29, 88
  %.partselect = trunc i89 %30 to i1
  store i1 %.partselect, i1* %dst.addr.644, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx46, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>"(i24* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<24>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
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
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512 %dst, i32* noalias readonly %src) unnamed_addr #2 {
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
define internal fastcc void @copy_out([30 x [60 x %"struct.ap_uint<12>"]]* noalias "unpacked"="0", [30 x [60 x i12]]* noalias readonly align 512 "unpacked"="1", [8 x %struct.TriggerObject]* noalias "unpacked"="2", [8 x i89]* noalias readonly align 512 "unpacked"="3", %"struct.ap_uint<24>"* noalias "unpacked"="4", i24* noalias nocapture readonly align 512 "unpacked"="5.0", i32* noalias "unpacked"="6", i32* noalias readonly align 512 "unpacked"="7") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a30a60struct.ap_uint<12>.107"([30 x [60 x %"struct.ap_uint<12>"]]* %0, [30 x [60 x i12]]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a8struct.TriggerObject([8 x %struct.TriggerObject]* %2, [8 x i89]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>.86"(%"struct.ap_uint<24>"* %4, i24* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>.86"(%"struct.ap_uint<24>"* noalias "unpacked"="0" %dst, i24* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
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

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a8struct.TriggerObject.97([8 x i89]* noalias align 512 %dst, [8 x %struct.TriggerObject]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [8 x i89]* %dst, null
  %1 = icmp eq [8 x %struct.TriggerObject]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a8struct.TriggerObject.100([8 x i89]* nonnull %dst, [8 x %struct.TriggerObject]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a8struct.TriggerObject.100([8 x i89]* %dst, [8 x %struct.TriggerObject]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [8 x %struct.TriggerObject]* %src, null
  %1 = icmp eq [8 x i89]* %dst, null
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
  %3 = getelementptr [8 x i89], [8 x i89]* %dst, i64 0, i64 %for.loop.idx46
  %4 = bitcast i20* %src.addr.0.0.0.07 to i24*
  %5 = load i24, i24* %4
  %6 = trunc i24 %5 to i20
  %7 = bitcast i89* %3 to i96*
  %8 = load i96, i96* %7
  %9 = trunc i96 %8 to i89
  %10 = zext i20 %6 to i89
  %11 = and i89 %9, -1048576
  %.partset6 = or i89 %11, %10
  store i89 %.partset6, i89* %3, align 4
  %src.addr.1.0.0.015 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 1, i32 0, i32 0, i32 0
  %12 = bitcast i20* %src.addr.1.0.0.015 to i24*
  %13 = load i24, i24* %12
  %14 = trunc i24 %13 to i20
  %15 = zext i20 %14 to i89
  %16 = shl i89 %15, 20
  %17 = and i89 %.partset6, -1099510579201
  %.partset5 = or i89 %17, %16
  store i89 %.partset5, i89* %3, align 4
  %src.addr.2.0.0.023 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 2, i32 0, i32 0, i32 0
  %18 = bitcast i6* %src.addr.2.0.0.023 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i6
  %21 = zext i6 %20 to i89
  %22 = shl i89 %21, 40
  %23 = and i89 %.partset5, -69269232549889
  %.partset4 = or i89 %23, %22
  store i89 %.partset4, i89* %3, align 1
  %src.addr.3.0.0.031 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 3, i32 0, i32 0, i32 0
  %24 = bitcast i6* %src.addr.3.0.0.031 to i8*
  %25 = load i8, i8* %24
  %26 = trunc i8 %25 to i6
  %27 = zext i6 %26 to i89
  %28 = shl i89 %27, 46
  %29 = and i89 %.partset4, -4433230883192833
  %.partset3 = or i89 %29, %28
  store i89 %.partset3, i89* %3, align 1
  %src.addr.4.0.0.039 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 4, i32 0, i32 0, i32 0
  %30 = bitcast i4* %src.addr.4.0.0.039 to i8*
  %31 = load i8, i8* %30
  %32 = trunc i8 %31 to i4
  %33 = zext i4 %32 to i89
  %34 = shl i89 %33, 52
  %35 = and i89 %.partset3, -67553994410557441
  %.partset2 = or i89 %35, %34
  store i89 %.partset2, i89* %3, align 1
  %src.addr.541 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 5
  %36 = load i32, i32* %src.addr.541, align 4
  %37 = zext i32 %36 to i89
  %38 = shl i89 %37, 56
  %39 = and i89 %.partset2, -309485009749287474686853121
  %.partset1 = or i89 %39, %38
  store i89 %.partset1, i89* %3, align 4
  %src.addr.643 = getelementptr [8 x %struct.TriggerObject], [8 x %struct.TriggerObject]* %src, i64 0, i64 %for.loop.idx46, i32 6
  %40 = bitcast i1* %src.addr.643 to i8*
  %41 = load i8, i8* %40
  %42 = trunc i8 %41 to i1
  %43 = zext i1 %42 to i89
  %44 = shl i89 %43, 88
  %45 = and i89 %.partset1, 309485009821345068724781055
  %.partset = or i89 %45, %44
  store i89 %.partset, i89* %3, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx46, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a30a60struct.ap_uint<12>.107"([30 x [60 x %"struct.ap_uint<12>"]]* noalias %dst, [30 x [60 x i12]]* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [30 x [60 x %"struct.ap_uint<12>"]]* %dst, null
  %1 = icmp eq [30 x [60 x i12]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a30a60struct.ap_uint<12>.110"([30 x [60 x %"struct.ap_uint<12>"]]* nonnull %dst, [30 x [60 x i12]]* nonnull %src, i64 30)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a30a60struct.ap_uint<12>.110"([30 x [60 x %"struct.ap_uint<12>"]]* %dst, [30 x [60 x i12]]* readonly %src, i64 %num) local_unnamed_addr #3 {
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
  call void @"arraycpy_hls.p0a60struct.ap_uint<12>.113"([60 x %"struct.ap_uint<12>"]* %dst.addr, [60 x i12]* %3, i64 60)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a60struct.ap_uint<12>.113"([60 x %"struct.ap_uint<12>"]* %dst, [60 x i12]* readonly %src, i64 %num) local_unnamed_addr #3 {
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

declare void @apatb_calo_trigger_ref_hw([30 x [60 x i12]]*, %"struct.ap_uint<12>"*, %"struct.ap_uint<20>"*, [8 x i89]*, i24*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([30 x [60 x %"struct.ap_uint<12>"]]* noalias "unpacked"="0", [30 x [60 x i12]]* noalias readonly align 512 "unpacked"="1", [8 x %struct.TriggerObject]* noalias "unpacked"="2", [8 x i89]* noalias readonly align 512 "unpacked"="3", %"struct.ap_uint<24>"* noalias "unpacked"="4", i24* noalias nocapture readonly align 512 "unpacked"="5.0", i32* noalias "unpacked"="6", i32* noalias readonly align 512 "unpacked"="7") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a8struct.TriggerObject([8 x %struct.TriggerObject]* %2, [8 x i89]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<24>.86"(%"struct.ap_uint<24>"* %4, i24* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  ret void
}

define void @calo_trigger_ref_hw_stub_wrapper([30 x [60 x i12]]*, %"struct.ap_uint<12>"*, %"struct.ap_uint<20>"*, [8 x i89]*, i24*, i32*) #5 {
entry:
  %6 = alloca [30 x [60 x %"struct.ap_uint<12>"]]
  %7 = alloca [8 x %struct.TriggerObject]
  %8 = alloca %"struct.ap_uint<24>"
  call void @copy_out([30 x [60 x %"struct.ap_uint<12>"]]* %6, [30 x [60 x i12]]* %0, [8 x %struct.TriggerObject]* %7, [8 x i89]* %3, %"struct.ap_uint<24>"* %8, i24* %4, i32* null, i32* %5)
  %9 = bitcast [30 x [60 x %"struct.ap_uint<12>"]]* %6 to [60 x %"struct.ap_uint<12>"]*
  %10 = bitcast [8 x %struct.TriggerObject]* %7 to %struct.TriggerObject*
  call void @calo_trigger_ref_hw_stub([60 x %"struct.ap_uint<12>"]* %9, %"struct.ap_uint<12>"* %1, %"struct.ap_uint<20>"* %2, %struct.TriggerObject* %10, %"struct.ap_uint<24>"* %8, i32* %5)
  call void @copy_in([30 x [60 x %"struct.ap_uint<12>"]]* %6, [30 x [60 x i12]]* %0, [8 x %struct.TriggerObject]* %7, [8 x i89]* %3, %"struct.ap_uint<24>"* %8, i24* %4, i32* null, i32* %5)
  ret void
}

declare void @calo_trigger_ref_hw_stub([60 x %"struct.ap_uint<12>"]* noalias nocapture nonnull readonly, %"struct.ap_uint<12>"* nocapture readonly, %"struct.ap_uint<20>"* nocapture readonly, %struct.TriggerObject* noalias nocapture nonnull, %"struct.ap_uint<24>"* noalias nocapture nonnull, i32* noalias nocapture nonnull)

attributes #0 = { argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
