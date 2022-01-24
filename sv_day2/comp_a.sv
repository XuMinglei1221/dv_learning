`ifndef COMP_A__SV
`define COMP_A__SV

class comp_a extends uvm_component;
    `uvm_component_utils(comp_a)
    uvm_blocking_put_port#(my_transaction) bp_port;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    extern function void build_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase);
endclass

function void comp_a::build_phase(uvm_phase phase);
    super.build_phase(phase);
    bp_port = new("bp_port", this);
endfunction

task comp_a::main_phase(uvm_phase phase);
    my_transaction tr;
    repeat(2) begin
        #10;
        tr = new("tr");
        assert(tr.randomize());
        `uvm_info("comp_a", "send a transaction", UVM_LOW) 
        tr.print();
        bp_port.put(tr);
    end
endtask


`endif