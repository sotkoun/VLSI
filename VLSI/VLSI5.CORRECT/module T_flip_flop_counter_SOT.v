module T_flip_flop_counter(T0,T1,T2,T0_DOT,T1_DOT,T2_DOT,clk);
input clk;
output T0,T0_DOT,T1,T1_DOT,T2,T2_DOT;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,nclk;
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
 assign T0_DOT=w4;
 not #(18) not4(T0,w4);
 not #(18) not5(w5,T0);



// not #(18) not6(nclk,clk);
 pmos p5(w6,w9,T0);
 nmos n5(w6,w9,T0_DOT);
 pmos p6(w6,w7,T0_DOT);
 nmos n6(w6,w7,T0);
 not #(18) not6(w8,w6);
 not not7(w7,w8);

 pmos p7(w9,w8,T0_DOT);
 nmos n7(w9,w8,T0);
 pmos p8(w9,w10,T0);
 nmos n8(w9,w10,T0_DOT);
 assign T1_DOT=w9;
 not #(18) not8(T1,w9);
 not #(18) not9(w10,T1);




// not #(18) not6(nclk,clk);
 pmos p9(w11,w14,T1);
 nmos n9(w11,w14,T1_DOT);
 pmos p10(w11,w12,T1_DOT);
 nmos n10(w11,w12,T1);
 not #(18) not10(w13,w11);
 not #(18) not11(w12,w13);

 pmos p11(w14,w13,T1_DOT);
 nmos n11(w14,w13,T1);
 pmos p12(w14,w15,T1);
 nmos n12(w14,w15,T1_DOT);
 assign T2_DOT=w14;
 not #(18) not12(T2,w14);
 not #(18) not13(w15,T2);




endmodule
