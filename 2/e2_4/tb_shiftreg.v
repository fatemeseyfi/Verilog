//***********************************
// Fateme Abdollah zade 995365105
// exercise 4
//***********************************
module tbshiftreg;

  reg clk, sin;
  reg [7:0] datain;
  reg [2:0] op;
  
  wire [7:0] out;
  wire sout;
  
  integer file;
  reg [7:0] indata;
  
  shiftreg dut(out, sout, datain, sin, op, clk);
  
  always
  #5 clk = ~clk;
  
  initial 
  begin
	$monitor("datain=%b, sin=%b, op=%b, sout=%b, out=%b",datain,sin,op,sout,out);
	
    
	#10

    sin = 0;
    datain = 8'h00;
    op = 3'b000;
    
	#10

    sin = 1;
    datain = 8'h90;
    op = 3'b001;
	
	#10

    sin = 0;
    datain = 8'h11;
    op = 3'b010;
	
	#10

    sin = 0;
    datain = 8'h00;
    op = 3'b011;
	
	#10

    sin = 0;
    datain = 8'h62;
    op = 3'b100;
	#10

    sin = 1;
    datain = 8'h50;
    op = 3'b101;
	
	#10

    sin = 0;
    datain = 8'h00;
    op = 3'b110;
	
	#10

    sin = 0;
    datain = 8'h43;
    op = 3'b111;
	
  end
  
  always #10 clk =  clk;

endmodule