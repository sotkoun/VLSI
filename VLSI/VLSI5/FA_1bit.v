module fadd(Sum,Carry,A,B,C);
 input A,B,C;
 output Sum,Carry;
 wire w1,w2,w3,w4,w5,nw1,w6;
 nand #(18) nand2_1(w1,A,B);
 or #(18) or2_1(w2,A,B);
 and #(18) and2_1(w3,w1,w2);
 and #(18) and2_2(w4,w3,C);
 not #(18) not1(nw1,w1);
 or #(18) or2_2(Carry,w4,w1);
 nand #(18) nand2_2(w5,w3,c);
 or #(18) or2_3(w6,w3,c);
 and #(18) and2_3(Sum,w5,w6);
endmodule

always
#200 A=~A;
#400 B=~B;
#800 C=~C;

