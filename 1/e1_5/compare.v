//***********************************
// Fateme Abdollah Zade 995365105
// exercise 5
//***********************************
module compare(g, l, e, A,B);
	input [7:0]A,B;
	output g,l,e;

	assign g = (A > B);
	assign l = (A < B);
	assign e = (A == B);
	
endmodule