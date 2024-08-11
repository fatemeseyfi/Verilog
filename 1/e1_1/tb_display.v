//***********************************
// Fateme Abdollah Zade 995365105
// exercise 1
//***********************************
module tbDisplay;
	reg i0,i1;
	wire out;
	
	display d(out,i0,i1);
	
	initial
	begin
		  $display(" NOTIF1 GATE");
		$display("i0	i1		out");
		
		#1
		i0=0;
		i1=0;
		
		$monitor("%b	%b		%b",i0,i1,out);
		
    	#1
		i0=0;
		i1=1;
		
		#1
		i0=0;
		i1=2'bx;
		
		#1
		i0=0;
		i1=1'bz;
        
        	
		#1
		i0=1;
		i1=0;	
		
			
		#1
		i0=1;
		i1=1;
		
			
		#1
		i0=1;
		i1=1'bx;
		
			
		#1
		i0=1;
		i1=1'bz;
		
			
		#1
		i0=1'bx;
		i1=0;	
		
			
		#1
		i0=1'bx;
		i1=1;
		
			
		#1
		i0=1'bx;
		i1=1'bx;
		
			
		#1
		i0=1'bx;
		i1=1'bz;
		
			
		#1
		i0=1'bz;
		i1=0;	
		
			
		#1
		i0=1'bz;
		i1=1;
		
			
		#1
		i0=1'bz;
		i1=1'bx;
		
			
		#1
		i0=1'bz;
		i1=1'bz;
		
		
	end
endmodule