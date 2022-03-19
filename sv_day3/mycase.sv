`ifndef MYCASE__SV
`define MYCASE__SV

class mycase extends uvm_test;
    
    my_sequencer sqr;
    start_seq s;
    next_seq s1;

    function new(string name = "mycase", uvm_component parent = null);
        super.new(name, parent);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        sqr = my_sequencer::type_id::create("my_sequencer", this);
        
    endfunction

    task main_phase(uvm_phase phase);
        phase.raise_objection(this);
        s1 = next_seq::type_id::create("next_seq", this);
        s1.start(sqr);
        phase.drop_objection(this);
    endtask

    `uvm_component_utils(mycase)
endclass

`endif