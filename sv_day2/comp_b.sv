`ifndef COMP_B__SV
`define COMP_B__SV

class comp_b extends uvm_component;
    `uvm_component_utils(comp_b)
    uvm_blocking_put_imp#(my_transaction, comp_b) bp_imp;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    extern function void build_phase(uvm_phase phase);
    extern function void put(my_transaction tr);

endclass

function void comp_b::build_phase(uvm_phase phase);
    super.build_phase(phase);
    bp_imp = new("bp_imp", this);
endfunction

function void comp_b::put(my_transaction tr);
    `uvm_info("comp_b", "receive a transaction", UVM_LOW) 
   tr.print();
endfunction


`endif