set PROJECT_NAME "calorimeter"
set SOLUTION_NAME "solution1"
set TOP_FUNCTION "calo_trigger_em_jet_stream_ref"

set SRC_FILE "calorimeter.cpp"
set TB_FILE  "tb_calorimeter_stream.cpp"

set FPGA_PART "xcvu13p-fsga2577-2-e"
set CLOCK_PERIOD 25

open_project $PROJECT_NAME

set_top $TOP_FUNCTION

add_files $SRC_FILE
add_files -tb $TB_FILE

open_solution $SOLUTION_NAME

set_part $FPGA_PART
create_clock -period $CLOCK_PERIOD -name default

puts "============================================================"
puts "Running C simulation..."
puts "============================================================"

csim_design

puts "============================================================"
puts "Running C synthesis..."
puts "============================================================"

csynth_design

puts "============================================================"
puts "HLS run complete."
puts ""
puts "Main synthesis report:"
puts "  $PROJECT_NAME/$SOLUTION_NAME/syn/report/${TOP_FUNCTION}_csynth.rpt"
puts ""
puts "C simulation output:"
puts "  $PROJECT_NAME/$SOLUTION_NAME/csim/report"
puts "============================================================"

exit
