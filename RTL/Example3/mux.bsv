module mkmux();
// instantiating the register
    Reg#(Bit#(4))a <- mkReg(0);
    Reg#(Bit#(4))b <- mkReg(0);
    Reg#(Bit#(4))d <- mkReg(0);
    Bool c = ?;
    rule hello;
        d <= c ? a : b ;
    endrule
endmodule
