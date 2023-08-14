package mux42_v2;

    interface Ifc_type;
        method int mux42(int a, int b, int c, int d, bit[1:0] sel);
    endinterface: Ifc_type

    (* synthesize *)
    module mkmux42_v2(Ifc_type);
        method int mux42(int a, int b, int c, int d, bit[1:0] sel);
            if(sel  == 'b00)
                return a;
            else if (sel  == 'b01)
                return b;
            else if (sel == 'b10)
                return c;
            else
                return d;
        endmethod
   
    endmodule: mkmux42_v2
endpackage: mux42_v2