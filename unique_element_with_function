//write function you have the array size with 10to20 and  each element should be varying in between 1 to100 the array should consists of unique elements


class cls ;
   int payload [];
   int length ;
   bit unique_q[0:99];
    int element;  
  function new();
    
    length = $urandom_range(10,20);
    payload=new[length];
   
  
    for (int i=0;i <length ;i++)
      begin
        
        do begin 
            element = $urandom_range(100,1);
        end
        while (unique_q[element] ==1);
        unique_q[element] =1;
        
        payload[i]=element;
      end
  endfunction
   
    function void post_randomize; 
      
      $display("payload %p ",payload);
    endfunction
    
endclass

module top;  
  cls obj;
  initial
  begin
    
    repeat (10) 
    begin
      obj = new;
     obj.randomize();
     
    end
  end
endmodule
