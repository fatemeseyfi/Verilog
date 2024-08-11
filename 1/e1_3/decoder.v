//***********************************
// Fateme Abdollah Zade 995365105
// exercise 3
//***********************************
module decoder(D,x,y, E);
	input x,y,E;
	output [3:0]D;
	
	wire xn,yn,En;
	
	not (xn,x), (yn,y), (En,E);
	nand (D[0],xn,yn,En),(D[1],yn,x,En),(D[2],xn,y,En),(D[3],x,y,En);
	

endmodule
