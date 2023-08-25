package fulladder;

function Bit#(2) fa (Bit#(1) a, Bit#(1) b, Bit#(1) c_in);
    let s = (a ^ b) ^ c_in;
    let c_out = (a & b) | (c_in & (a ^ b));
    return {c_out,s};
endfunction

interface Ifc_type;
    function action fa(Bit#(1) a, Bit#(1) b, Bit#(1) c_in);
endinterface: Ifc_type

(* synthesize *)
module mkfulladder(Ifc_type)



endmodule
    
endpackage : fulladder

