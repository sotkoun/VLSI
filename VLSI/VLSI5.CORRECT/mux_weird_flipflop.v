module d_flipflop(clk,D,Q);
 input D,clk;
 output Q;
 wire w1,w2,w3,w4,w5,nclk;
 not not1(nclk,clk);
 pmos p1(w1,D,nclk);
 nmos n1(w1,D,clk);
 pmos p2(w1,w2,clk);
 nmos n2(w1,w2,nclk);
 not not2(w3,w1);
 not not3(w2,w3);

 pmos p3(w4,w3,clk);
 nmos n3(w4,w3,nclk);
 pmos p4(w4,w5,nclk);
 nmos n4(w4,w5,clk);
 not not4(Q,w4);
 not not5(w5,Q);
endmodule

