`timescale 1ns/1ps
`include "uvm_macros.svh"
import uvm_pkg::*;
`include "my_sequencer.sv"
`include "start_seq.sv"
`include "next_seq.sv"
`include "mycase.sv"


module top_tb;


logic [7:0] rxdata;
logic rxvalid;
logic [7:0] txdata;
logic txvalid;
reg clk;
reg rst_n;

dut my_dut(.clk(clk),
           .rst_n(rst_n),
           .rxd(rxdata),
           .rx_dv(rxvalid),
           .txd(txdata),
           .tx_en(txvalid));

initial begin
   clk = 0;
   forever begin
      #100 clk = ~clk;
   end
end

initial begin
   rst_n = 1'b0;
   #1000;
   rst_n = 1'b1;
end

initial begin
   run_test("mycase");
end

endmodule
