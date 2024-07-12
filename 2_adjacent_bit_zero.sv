//Constraint to generate two adjacent bits to be 1 and remaining bits to be 0 for bit [7:0]a;

class abc;
  rand bit [2:0] shift_val;
  rand bit [7:0] num;
  
  constraint shift_val_c {  num== 'b0;}
  
   function void  post_randomize();
  
     num = 2'b11<<shift_val;
  
  endfunction

  
endclass


module check;
  abc a;
  initial
    begin
      a = new();
      repeat(10)
        begin 
          a.randomize();
          $display("ar is  %b %d",a.num,a.shift_val);
        end
    end
endmodule
