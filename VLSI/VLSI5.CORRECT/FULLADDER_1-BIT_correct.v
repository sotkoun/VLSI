module fadd(Sum,Carry,A,B,C);
 input A,B,C;
 output Sum,Carry;
 wire w1,w2,w3,w4,w5,w6,w7;
 nand #(18) nand2_1(w1,A,B);
 or #(18) or2_1(w2,A,B);
 and #(18) and2_1(w3,w1,w2);
 nand #(18) nand2_2(w4,w3,C);
 or #(18) or2_2(w5,w3,C);
 and #(18) and2_2(Sum,w4,w5);
 and #(18) and2_3(w6,w3,C);
 and #(18) and2_4(w7,A,B);
 or #(18) or2_3(Carry,w6,w7);
endmodule
