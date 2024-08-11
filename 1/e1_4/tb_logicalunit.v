//***********************************
// Fateme Abdollah Zade 995365105
// exercise 4b
//***********************************
module tbLogicalunit;
	reg [7:0]A,B;
	reg s1,s0;
	wire [7:0]D;
	

	logicUnit lu(D,A,B,s1,s0);
	
	initial
	begin
		$monitor("A=%h,	B=%h, s1=%b, s0=%b, D=%h",A,B,s1,s0,D);
		
		A=8'hf0;
		B=8'h14;
		s1=0;
		s0=0;
		
		#10 s1=0;s0=1;
		#10 s1=1;s0=0;
		#10 s1=1;s0=1;
		
		#50 $stop;

	end
endmodule