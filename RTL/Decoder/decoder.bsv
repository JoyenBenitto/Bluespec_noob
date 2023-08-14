package decoder;

    `include "decoder.defines"
    `ifdef decoder_noinline
    (*noinline*)
    `endif
    

  /*doc:func: This function decodes the rs1 addr of the instruction. It is set to 0 for instructions
  * that do not require rs1 operand*/
  function Bit#(5) fn_decode_rs1(Bit#(32) inst );
    case (inst[6:2]) matches
       `A : return '00;
       `B : return '11;
       `C : return '10;
       default: return '01;
     endcase
  endfunction:fn_decode_rs1

endpackage