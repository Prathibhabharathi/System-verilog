// Code your testbench here
// or browse Examples
module tb();
  task one();
    begin
    $display("printing the first=%0t",$time);
    #30;
    $display("printing after one=%0t",$time);
    end
  endtask
  task two();
    begin
    $display("printing the two = %0t",$time);
    #40;
    $display("printing after two =%0t",$time);
    end
  endtask
  task three();
    begin
    $display("printing the three = %0t",$time);
    #50;
    $display ("printing after the three = %0t",$time);
    end
  endtask
   initial begin 
     fork
       one();
       two();
      
     join_none
     three();
   end
endmodule
