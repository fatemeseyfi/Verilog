//***********************************
// Fateme Abdollah Zade 995365105
// exercise 3
//***********************************
module dec83(D,x,y,z);
	input x,y,z;
	output [7:0]D;
	
	wire zn;
	
	assign zn=~z;
	
	decoder d1(D[3:0],x,y,zn);
	decoder d2(D[7:4],x,y,z);
	
	

endmodule