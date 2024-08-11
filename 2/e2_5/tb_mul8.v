//***********************************
// Fateme Abdollah zade 995365105
// exercise 5
//***********************************
module tbMul8;


   wire [15:0] P;
   reg S;

   reg [7:0] A;
   reg [7:0] B;
  
   wire S_internal;
  

  mul8 m(A,B,S,P);

  initial 
  begin
    A = 8'b00001000;
    B = 8'b00000010;
    S = 1'b0;
	
    #10;
	
	S = 1'b1;
    
	#10;
    $display("8*2=16 --->   A = %b, B = %b, P = %b", A, B, P);
    
    A = 8'b00010100;
    B = 8'b000000101;
	
    #10;
	
    S = 1'b0;
	
    #10;
	
    S = 1'b1;
	
    #10;
    
    $display("20*5=100 --->   A = %b, B = %b, P = %b", A, B, P);
end
endmodule