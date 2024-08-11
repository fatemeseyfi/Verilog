//***********************************
// Fateme Abdollah Zade 995365105
// exercise 5
//***********************************
module tbCompare;
	reg [7:0]A,B;
	wire g,l,e;
	
	compare c(g,l,e,A,B);
	
	initial
	begin
	#0 A=100; B=30;
	$display("A=%d, B=%d",A,B);
	if(g)
		$display("A is greater than B");
	else if(l)
		$display("A is less than B");
	else
		$display("A is greater than B");
	
	end

endmodule