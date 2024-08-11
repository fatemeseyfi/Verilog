//***********************************
// Fateme Abdollah zade 995365105
// exercise 5
//***********************************
module mul8 (A,B,S,P);

  reg [7:0] tempA;
  reg [7:0] tempB;
  reg S_internal;

  input wire [7:0] A,
  input wire [7:0] B,
  input wire S,
  output reg [15:0] P

  

  always @(posedge S or posedge S_internal) 
  
  begin
  
  S_internal <= S;

    if (S == 1'b1) 
	begin
      tempA <= A;
      tempB <= B;
      P <= 16'b0;
    end

    else 
	begin
      if (RB == 8'b0)
    begin
        S_internal <= 1'b0;
    end

    else 
	begin
        P <= P + tempA;
        tempB <= tempB - 1;

    end
    end
  end
endmodule