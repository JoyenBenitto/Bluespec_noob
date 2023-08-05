module mkTest(Empty);

    Reg#(int) state <- mkReg(0);
    // instanciating mkMult1, type is Mult_ifc and instace name is m
    Mult_ifc m <- mkMult1();

    rule go(state == 0);
        m.start(9,5);
        state <= 1;
    endrule

    rule finish (state == 1);
        $display("product =  &d", m.result());
        state<= 2;
    endrule
endmodule: mkTest