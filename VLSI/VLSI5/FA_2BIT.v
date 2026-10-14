
module fadd_2bit(S0,S1,S2,A1,A0,B1,B0,C);
 input A1,A0,B1,B0,C;
 output S0,S1,S2;
 wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,Carry;
 nand #(18) nand2_1(w1,A0,B0);
 or #(18) or2_1(w2,A0,B0);
 and #(18) and2_1(w3,w1,w2);
 nand #(18) nand2_2(w4,w3,C);
 nand #(18) nand2_3(Carry,w4,w1);
 or #(18) or2_2(w5,w3,C);
 and #(18) and2_2(S0,w4,w5);
 nand #(18) nand2_1(w6,A1,B1);
 or #(18) or2_1(w7,A1,B1);
 and #(18) and2_1(w8,w6,w7);
 nand #(18) nand2_2(w9,w8,Carry);
 nand #(18) nand2_3(S2,w10,w6);
 or #(18) or2_2(w10,w8,Carry);
 and #(18) and2_2(S1,w9,w10);
endmodule

always
#200 A0=~A0;
#400 B0=~B0;
#800 C=~C;
#400 A1=~A1;
#1600 B1=~B1;
