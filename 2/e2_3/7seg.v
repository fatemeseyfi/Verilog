//***********************************
// Fateme Abdollah zade 995365105
// exercise 3
//***********************************
module sevenseg(out,in);
	output [6:0]out;
	input [3:0]in;
	
	reg [6:0]out;
	
	always @(in)
	begin
		case(in)
			4'b0000:out<=7'b1111110;
			4'b0001:out<=7'b1100000;
			4'b0010:out<=7'b1101101;
			4'b0011:out<=7'b1111001;
			4'b0100:out<=7'b0110011;
			4'b0101:out<=7'b1011011;
			4'b0110:out<=7'b1011111;
			4'b0111:out<=7'b1110000;
			4'b1000:out<=7'b1111111;
			4'b1001:out<=7'b1111011;
			4'b1010:out<=7'b1111110;
			4'b1011:out<=7'b1100000;
			4'b1100:out<=7'b1101101;
			4'b1101:out<=7'b1111001;
			4'b1110:out<=7'b0110011;
			4'b1111:out<=7'b1011011;
		endcase
			
	end
endmodule