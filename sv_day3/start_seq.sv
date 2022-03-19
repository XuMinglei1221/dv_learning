`ifndef START_SEQ__SV
`define START_SEQ__SV

class start_seq extends uvm_sequence#(uvm_sequence_item);
    `uvm_object_utils(start_seq)

    function new(string name="start_seq");
        `uvm_info("start_seq", "start_seq new function", UVM_LOW)
    endfunction

    virtual task body();
        `uvm_info("start_seq", "send a my_sequence!!!!", UVM_LOW)
    endtask

    virtual task pre_body();
        `uvm_info("start_seq", "start_seq pre_body task", UVM_LOW)
    endtask
endclass

`endif