// Code your design here
// Code your design here
module d_ff(
   input logic d,
   input logic clk,
  input logic rst,
  output logic q, 
  output logic qbar);
  always_ff @(posedge clk)
    begin
      if(rst)
      q <= 1'b0;
  else
   q <= d;
    end
  assign qbar= ~q;
endmodule
