package mux42;

    interface Ifc_type;
        method int mux42(int a, int b, int c, int d, bit[1:0] sel);
    endinterface: Ifc_type

    (* synthesize *)
    module mkmux42(Ifc_type);
        method int mux42(int a, int b, int c, int d, bit[1:0] sel);
            case (sel)
                'b00: return a;
                'b01: return b;
                'b10: return c;
                'b11: return d;
                default: return a;
            endcase
        endmethod
   
    endmodule: mkmux42
endpackage: mux42