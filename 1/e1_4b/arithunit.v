//***********************************
// Fateme Abdollah Zade 995365105
// exercise 4
//***********************************

//full adder
module fulladd(sum, c_out, a, b, c_in);
	output sum,c_out;
	input a,b, c_in;
	
	wire s1,c1,c2;
	
	assign s1=a^b;
	assign c1=a&b;
	assign sum=s1^c_in;
	assign c2=s1&c_in;
	assign c_out=c2^c1;

endmodule
	
//########################################3


// a 4 to 1 multiplexer	
module m41(out, a,b,c,d, s1, s0);

	output out;
	input a,b,c,d, s0, s1;
	wire s0n,s1n,y0,y1,y2,y3;

	

assign s0n=~s0;
assign s1n=~s1;
assign y0=a && s1n && s0n;
assign y1=b && s1n && s0;
assign y2=c && s1 && s0n;
assign y3=d && s1 && s0;
assign out = y0|y1|y2|y3;

endmodule

//##################################################

// arithmetic cell for one bit
module arithcell(out, c_out, a, b, s1,s0,c_in);
	input a,b,s1,s0,c_in;
	output out,c_out;
	
	wire y,bn;
	
	assign bn=~b;
	fulladd fa(out,c_out,a,y,c_in);
	m41 m(y,b,bn,1'b0,1'b1,s1,s0);
	
endmodule

//##################################################

// arithmetic cell for 8 bit

module arithunit(D,C_out,z,A,B,s1,s0,C_in);
	input [7:0]A,B;
	input s1,s0,C_in;
	output [7:0]D;
	output z,C_out;
	
	wire c0,c1,c2,c3,c4,c5,c6,c7;
	
	arithcell ac0(D[0], c0, A[0], B[0], s1, s0, C_in); 
	arithcell ac1(D[1], c1, A[1], B[1], s1, s0, c0); 
	arithcell ac2(D[2], c2, A[2], B[2], s1, s0, c1); 
	arithcell ac3(D[3], c3, A[3], B[3], s1, s0, c2); 
	arithcell ac4(D[4], c4, A[4], B[4], s1, s0, c3); 
	arithcell ac5(D[5], c5, A[5], B[5], s1, s0, c4); 
	arithcell ac6(D[6], c6, A[6], B[6], s1, s0, c5); 
	arithcell ac7(D[7], C_out, A[7], B[7], s1, s0, c6); 
	
	assign z=D[0]|D[1]|D[2]|D[3]|D[4]|D[5]|D[6]||D[7];

endmodule
