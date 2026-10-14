module  Tff(Q,QC,T,CLK);
 input CLK;
 output Q,QC,T;
 wire w1,w2,w3,w4,w5,w6,w7;
 assign w1=T;
 assign w2=w1&CLK;
 assign w3=CLK&TC;
 nor nor(Q,w2,QC);
 nor nor(QC,w3,Q);
 assign w4=~QC;
 assign w5=w4&w7;
 assign w6=w7&QC;
 nor nor(TC,w5,T);
 nor nor(T,w6,TC);
 assign w7=~CLK;
endmodule

always
#100 CLK=~CLK;