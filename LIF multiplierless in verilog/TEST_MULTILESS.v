module testLIF_edriss();
  reg rst;
  reg clk=1'b0;
  
  wire [31:0] VOUT;
  //wire [19:0] u;
  //wire [19:0] v;
  
    integer j=0; 
    initial
    begin
      rst=1'b0;
      #5 rst=1'b1;
    end
    always
    begin
 #90 clk=~clk; 

end
LIF a1(clk,rst,VOUT);
endmodule

    
    
