//***********************************
// Fateme Abdollah zade 995365105
// exercise 2b
//***********************************
module enPr(out,in);
	output [2:0]out;
	input [7:0]in;
	
	reg [2:0]out;
	
	always @(in)
	begin
		casex (in)
			8'b00000001:out=0;
			8'b0000001X:out=1;
			8'b000001XX:out=2;
			8'b00001XXX:out=3;
			8'b0001XXXX:out=4;
			8'b001XXXXX:out=5;
			8'b01XXXXXX:out=6;
			8'b1XXXXXXX:out=7;
			default : out=3'bx;
		endcase
	end



endmodule