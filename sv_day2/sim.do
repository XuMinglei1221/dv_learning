set  UVM_HOME       D:/questasim64_10.6c/verilog_src/uvm-1.1d
set  UVM_DPI_HOME   D:/questasim64_10.6c/uvm-1.1d/win64  
set  WORK_HOME      F:/sv/sv_day2
if [file exists work] {  
  vdel -all  
}  
vlib work  
vlog  +incdir+$UVM_HOME/src -L mtiAvm -L mtiOvm -L mtiUvm -L mtiUPF $WORK_HOME/dut.sv top_tb.sv 
 
vsim -novopt -c -sv_lib $UVM_DPI_HOME/uvm_dpi work.top_tb 
run -all