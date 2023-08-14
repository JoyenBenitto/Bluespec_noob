// Making adder with funcitons instead of methods

package mux21;
    interface Ifc_type;
        method int mux(int a, int b, Bool sel);
    endinterface: Ifc_type

    (* synthesize *)
    module mkmux21(Ifc_type);
        method int mux(int a, int b, Bool sel);
            return sel ? a : b;
        endmethod
    endmodule : mkmux21
endpackage: mux21