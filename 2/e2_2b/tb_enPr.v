//***********************************
// Fateme Abdollah zade 995365105
// exercise 2b
//***********************************
module tbEnPr;
	reg [7:0]in;
	
	wire [2:0]out;
	
	enPr en(out, in);
	
	initial
	begin
		$monitor("input=%b   output=%b",in,out);
			in=8'b00000001;
		#5	in=8'b00000011;
		#5	in=8'b00000101;
		#5	in=8'b00001010;
		#5	in=8'b00011100;
		#5	in=8'b00000000;
	end
endmodule