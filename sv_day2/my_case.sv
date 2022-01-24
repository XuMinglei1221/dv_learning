`ifndef MY_CASE__SV
`define MY_CASE__SV

class my_case extends uvm_test;

    comp_a a;
    comp_b b;
    function new(string name = "my_case", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    extern virtual function void build_phase(uvm_phase phase);
    extern virtual function void connect_phase(uvm_phase phase);
    extern virtual task main_phase(uvm_phase phase); 
    `uvm_component_utils(my_case)
endclass

function void my_case::build_phase(uvm_phase phase);
    super.build_phase(phase);
    a = comp_a::type_id::create("a", this);
    b = comp_b::type_id::create("b", this);

endfunction

function void my_case::connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    a.bp_port.connect(b.bp_imp);
endfunction

task my_case::main_phase(uvm_phase phase);
   phase.raise_objection(this);
   #1000;
   phase.drop_objection(this);
endtask

`endif