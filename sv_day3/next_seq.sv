`ifndef NEXT_SEQ__SV
`define NEXT_SEQ__SV

class next_seq extends start_seq;
    `uvm_object_utils(next_seq)

function new(string name="next_seq");
    `uvm_info("next_seq", "next_seq new function", UVM_LOW)
endfunction

virtual task body();
    `uvm_info("next_seq", "next_seq body task", UVM_LOW)
endtask

// virtual task pre_body();
//    `uvm_info("next_seq", "next_seq pre_body task", UVM_LOW)
// endtask

endclass

`endif