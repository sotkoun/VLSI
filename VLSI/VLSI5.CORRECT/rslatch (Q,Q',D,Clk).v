module rslatch (Q,NQ,D,Clk) 
  input D,Clk; 
  output Q,NQ; 
  wire w1;
  assign w1=~D;
  assign Q=~NQ|(w1&Clk);  
  assign NQ=~Q|(Clk&D);
endmodule

 always
 #100 D=~D;
 #200 Clk=~Clk;