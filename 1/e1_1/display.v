//***********************************
// Fateme Abdollah Zade 995365105
// exercise 1
//***********************************
module display(out, i0, i1);
	input i0,i1;
	output out;
	
	and a(out,i0,i1);
	xor x(out,i0,i1);
	
	// bufif b(out,in,ctrl) --> ctrl=i1
	bufif0 b0(out,i0,i1);
	notif1 n1(out,i0,i1);

endmodule