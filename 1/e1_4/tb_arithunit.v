//***********************************
// Fateme Abdollah Zade 995365105
// exercise 4b
//***********************************
module tbArithunit;
	reg [7:0]A,B;
	reg s1,s0,C_in;
	wire [7:0]D;
	wire z, C_out;
	
	arithunit au(D,C_out,z,A,B,s1,s0,C_in);
	
	initial 
	begin
		$monitor("A=%d, B=%d, s1=%b, s0=%b, C_in=%b, D=%d, C_out=%b, z=%b",A,B,s1,s0,C_in,D,C_out,z);
		
		A=35;
		B=25;
		
		#0 s1=0; s0=0; C_in=0;
		#10 s1=0; s0=0; C_in=1;
		#10 s1=0; s0=1; C_in=0;
		#10 s1=0; s0=1; C_in=1;
		#10 s1=1; s0=0; C_in=0;
		#10 s1=1; s0=0; C_in=1;
		#10 s1=1; s0=1; C_in=0;
		#10 s1=1; s0=1; C_in=1;
		
		
	end
endmodule