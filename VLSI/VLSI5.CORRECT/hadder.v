 module hadd (Cout,Sum,A0,B0);
 input A0,B0;
 output Sum,Cout;
 wire w1,w2;
 nor #(18) nor2_1(w1,A0,B0);
 and #(18) and2_1(w2,A0,B0);
 nor #(18) nor2_1(Sum,w1,w2);
 and #(18) and2_1(Cout,A0,B0);
 endmodule

 // Simulation parameters in Verilog Format
 always
 #100 A0=~A0;
 #200 B0=~B0;
// #400 A=~A;