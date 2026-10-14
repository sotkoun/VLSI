module fadd_2bit(S0,S1,S2,A1,A0,B1,B0,C);
 input A1,A0,B1,B0,C;
 output S0,S1,S2;
 wire w1,w2,w3,w4,w5,w6,w7,Carry;
 
nand #(18) nand2_1(w1,A0,B0);
 or #(18) or2_1(w2,A0,B0);
 and #(18) and2_1(w3,w1,w2);
 nand #(18) nand2_2(w4,w3,C);
 or #(18) or2_2(w5,w3,C);
 and #(18) and2_2(S0,w4,w5);
 and #(18) and2_3(w6,w3,C);
 and #(18) and2_4(w7,A0,B0);
 or #(18) or2_3(Carry,w6,w7);

 nand #(18) nand2_1(w8,A1,B1);
 or #(18) or2_1(w9,A1,B1);
 and #(18) and2_1(w10,w8,w9);
 nand #(18) nand2_2(w11,w10,Carry);
 or #(18) or2_2(w12,w10,Carry);
 and #(18) and2_2(S1,w11,w12);
 and #(18) and2_3(w13,w10,Carry);
 and #(18) and2_4(w14,A1,B1);
 or #(18) or2_3(S2,w13,w14);
endmodule



