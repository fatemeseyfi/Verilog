//***********************************
// Fateme Abdollah zade 995365105
// exercise 2
//***********************************
module tbEncoder;
	reg [7:0]in;
	
	wire [2:0]out;
	
	encoder en(out, in);
	
	initial
	begin
		$monitor("input=%b   output=%b",in,out);
			in=8'b00000001;
		#5	in=8'b00000010;
		#5	in=8'b00000100;
		#5	in=8'b00001000;
		#5	in=8'b00010000;
		#5	in=8'b00000000;
	end
endmodule