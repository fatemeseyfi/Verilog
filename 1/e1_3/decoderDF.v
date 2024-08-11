//***********************************
// Fateme Abdollah Zade 995365105
// exercise 3
//***********************************
module decoder(D,x,y, E);
	input x,y,E;
	output [3:0]D;
	
	wire xn,yn,En;
	
	
	assign xn=~x;
	assign yn=~y;
	assign En=~E;
	assign D[0]=~(xn&yn&En);
	assign D[1]=~(yn&x&En);
	assign D[2]=~(xn&y&En);
	assign D[3]=~(x&y&En);


endmodule
