module mkMult(Empty);
    int d_input =9, r_input =5;

    // State Rregister
    Reg#(int) product <- mkReg(0);
    Reg#(int) d <- mkReg(d_input);
    Reg#(int) r <- mkReg(r_input);
    // Rules-Behavior
    rule cycle(r != 0);  //* algorithm
        if(r[0] == 1) product <= product + d;
        d <= d<<1;
        r<= r>>1;
    endrule: cycle


    rule done(r == 0);
        $display("product = %d", product);
    endrule: done

endmodule



