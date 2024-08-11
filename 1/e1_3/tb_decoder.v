//***********************************
// Fateme Abdollah Zade 995365105
// exercise 3
//***********************************
module tbDecoder;
	reg x,y,z;
	wire [7:0]D;
	
	dec83 d(D,x,y,z);
	
	initial 
	begin
		$display("x   y   z   |   D7   D6   D5   D4   D3   D2   D1   D0");
		$monitor("%b   %b   %b   |   %b    %b    %b    %b    %b    %b    %b    %b",x,y,z,D[7],D[6],D[5],D[4],D[3],D[2],D[1],D[0]);
		
	#0	z=0;y=0;x=0;
	#5	z=0;y=0;x=1;	
	#5	z=0;y=1;x=0;
	#5	z=0;y=1;x=1;
	#5	z=1;y=0;x=0;
	#5	z=1;y=0;x=1;
	#5	z=1;y=1;x=0;
	#5	z=1;y=1;x=1;

	end
	
endmodule