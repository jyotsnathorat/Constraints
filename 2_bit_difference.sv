class cls ;

  rand bit [31:0] data;
  rand bit [31:0] data_prev;
   constraint c_data {
     $countones(data)==2;
     data ^ data_prev ==2;
                      }
   
    function void post_randomize; 
      data_prev =data;
      $display("data %b  %d",data,data);
    endfunction
    
endclass

module top;  
  cls obj;
  initial
  begin
    obj = new;
    repeat (10) 
    begin
     obj.randomize();
    end
  end
  
endmodule