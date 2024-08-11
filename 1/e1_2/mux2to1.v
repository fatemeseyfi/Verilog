//***********************************
// Fateme Abdollah Zade 995365105
// exercise 2
//***********************************
module mux2to1(minO,maxO,typO, in1, in2, s);
	input in1,in2,s;
	output minO,maxO,typO;
	wire sn,o2,o1,o4,o3,o6,o5;
	
	assign sn=~s;
	
	bufif1 #(1,3,5) b2(minO,in1,s);
	bufif0 #(1,3,5) b1(minO,in2,sn);
	
	
	
	bufif1 #(2,4,6) b6(typO,in1,s);
	bufif0 #(2,4,6) b5(typO,in2,sn);
	
	
	bufif1 #(3,5,7) b4(maxO,in1,s);
	bufif0 #(3,5,7) b3(maxO,in2,sn);
	
	
	
	
endmodule