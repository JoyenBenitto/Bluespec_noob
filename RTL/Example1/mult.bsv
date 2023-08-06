// Creating an interface decleration
interface Mult_ifc;
    // we have a start method and a result method
    method Action start(int x, int y);
    method int result();
endinterface: Mult_ifc

// Craeating the module and we are using the interface type here whcih has the portlist
module mkMult1(Mult_ifc);

    // Instanciating three registers which carries a int value in it
    // mkReg creates a register and we are resetting them all to 0
    Reg#(int)product <- mkReg(0);
    Reg#(int)d <- mkReg(0);
    Reg#(int)r <- mkReg(0);

    rule cycle(r!=0);
        if (r[0] == 1) product <= product + d;
        d<= d<<1;
        r<=r>>1;
    endrule

    method Action start (x, y) if (r == 0);
    d<= x; r<= y;
    endmethod

    method result() if (r == 0);
        return product;
    endmethod

endmodule: mkMult1