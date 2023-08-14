package decoder_onehot;

`include "onehot.define"

    interface Ifc_type;
        method bit[3:0] decoder(bit[1:0] inp);
    endinterface: Ifc_type
    
    (* synthesize *)
    module mkdecoder_oneshot(Ifc_type);
        method bit[3:0] decoder(bit[1:0] inp);
            case(inp)
                `a : return `a_decoded;
                `b : return `b_decoded;
                `c : return `c_decoded;
                `d : return `d_decoded;
                default : return `a_decoded;
            endcase
        endmethod
    endmodule: mkdecoder_oneshot
endpackage: decoder_onehot