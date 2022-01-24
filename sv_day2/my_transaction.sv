`ifndef MY_TRANSACTION__SV
`define MY_TRANSACTION__SV

class my_transaction extends uvm_sequence_item;

   rand bit[7:0] src;
   rand bit[7:0] dst;

   `uvm_object_utils_begin(my_transaction)
      `uvm_field_int(src, UVM_ALL_ON)
      `uvm_field_int(dst, UVM_ALL_ON)
   `uvm_object_utils_end

   function new(string name = "my_transaction");
      super.new();
   endfunction

endclass
`endif
