//***********************************
// Fateme Abdollah zade 995365105
// exercise 3
//***********************************
module tbSevenseg;
	reg [3:0]in;
	
	wire [6:0]out;
	
	sevenseg seg(out,in);
	
	initial
	begin
		$monitor("input=%b   output=%b",in,out);
			in=4'b0000;
		#5	in=4'b0001;
		#5	in=4'b0010;
		#5	in=4'b0011;
		#5	in=4'b0100;
		#5	in=4'b1000;
	end
endmodule