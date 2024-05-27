

interface Mac_IFC ;
method Action acc (Int#(16) aa, Int#(16) bb);
method Action reset_acc (Int#(16) value);
method Int#(16) read_y;
endinterface

import "BVI" my_mac = module mkMac (Mac_IFC);
    default_clock dclk (clk);
    default_reset dreset (rst_b);
    method acc(a, b) enable(EN);
    method reset_acc(clear_value) enable(clear);
    method out read_y();
    schedule (read_y) SB (reset_acc, acc);
    schedule (acc) C (reset_acc);
endmodule

(*synthesize*)
module mkTop(Mac_IFC);
   let ifc <- mkMac;
   return (ifc);
endmodule