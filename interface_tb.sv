// Code your testbench here
// or browse Examples
interface d_ff_ex();
           logic d;
           logic clk;
           logic rst;
           logic q;
           logic qbar;
endinterface
module tb();
   d_ff_ex intf(); 
  d_ff dut (.clk(intf.clk),
            .rst(intf.rst),
            .d(intf.d),
            .q(intf.q),
            .qbar(intf.qbar));
  initial begin
    intf.clk=0;
    forever #5 intf.clk= ~intf.clk;
  end
   initial begin
     $monitor("clk=%b,rst=%b,d=%b,q=%b,qbar=%b",intf.clk,intf.rst,intf.d,intf.q,intf.qbar);
     #5; 
     intf.rst=1;
     #5;
     intf.rst=0;
     #5;
     intf.d=1;
     #5;
     intf.d=0;
     #5;
     intf.d=0;
     #5;
     intf.d=1;
     $finish;
   end
           initial begin
  $dumpfile("waveform.vcd"); 
  $dumpvars(0,tb); 

end

endmodule
    
