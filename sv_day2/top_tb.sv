`timescale 1ns/1ps
`include "uvm_macros.svh"

import uvm_pkg::*;
`include "my_transaction.sv"
`include "comp_a.sv"
`include "comp_b.sv"
`include "my_case.sv"

module top_tb;


initial begin
   run_test("my_case");
end


endmodule
