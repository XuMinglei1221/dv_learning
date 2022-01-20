`timescale 1ns/1ps
`include "uvm_macros.svh"

import uvm_pkg::*;

module top_tb;

my_test test;
sub_test s_test;

initial begin
   test = new();
   s_test = new();
   $display("hello, UVM!!!");
   test.play_something();
   s_test.play_parents_para();
   $display("top_tb display a: %0d!!!",test.a);
   $display("top_tb display a: %0d!!!",s_test.a);
   //$display("top_tb display b: %0d!!!",test.b);
   //$display("top_tb display b: %0d!!!",s_test.b);
   //$display("top_tb display c: %0d!!!",test.c);
   //$display("top_tb display c: %0d!!!",s_test.c);
end

endmodule

class my_test;
   bit[7:0] a = 8'h4;
   protected bit[7:0] b = 8'b1111;
   local bit[7:0] c = 8'b1010;
   function void play_something();
      $display("my_test display a: %0d!!!",a);
      $display("my_test display b: %0d!!!",b);
      $display("my_test display c: %0d!!!",c);
   endfunction
endclass

class sub_test extends my_test;
   function void play_parents_para();
      $display("sub_test display a: %0d!!!",a);
      //$display("sub_test display b: %0d!!!",b);
      //$display("sub_test display c: %0d!!!",c);
   endfunction
endclass
