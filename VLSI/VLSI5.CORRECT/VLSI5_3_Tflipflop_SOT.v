module T_flipflop(clk,T);
 input clk;
 output T;
 wire w1,w2,w3,w4,w5,nclk;
 not #(18) not1(nclk,clk);
 pmos p1(w1,w4,clk);
 nmos n1(w1,w4,nclk);
 pmos p2(w1,w2,nclk);
 nmos n2(w1,w2,clk);
 not #(18) not2(w3,w1);
 not not3(w2,w3);

 pmos p3(w4,w3,nclk);
 nmos n3(w4,w3,clk);
 pmos p4(w4,w5,clk);
 nmos n4(w4,w5,nclk);
 not #(18) not4(T,w4);
 not #(18) not5(w5,T);
endmodule
