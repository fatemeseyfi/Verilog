//***********************************
// Fateme Abdollah Zade 995365105
// exercise 2
//***********************************
module tbMux2to1;
	reg in1,in2,s;
	wire out;
	
	mux2to1 m(minO,maxO,typO,in1,in2,s);
	
	initial
	begin
	
    in1=0; in2=0; s=0;
    #5
	//$monitor("in1=%b,  in0=%b,  s=%b,  minO=%b,  maxO=%b,  typO=%b",in1,in2,s,minO,maxO,typO);
	#20 in1=0; in2=1; s=0;
	#20 in1=1; in2=0; s=0;
	#20 in1=1; in2=1; s=0;
	#20 in1=0; in2=0; s=1;
	#20 in1=0; in2=1; s=1;
	#20 in1=1; in2=0; s=1;
	#20 in1=1; in2=1; s=1;
	end
endmodule