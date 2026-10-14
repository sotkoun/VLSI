 module Register(clk,D,Q,NQ);
  	input D,clk;
 	output Q,NQ;
 	wire a,b,c,d;

 	nand #(18) nand2_1(c,clk,b);
 	nand #(18) nand2_6(b,a,c);
	nand #(18) nand2_2(d,clk,c,a);
	nand #(18) nand2_3(a,d,D);
	nand #(18) nand2_4(Q,c,NQ);
 	nand #(18) nand2_5(NQ,d,Q);

 endmodule

