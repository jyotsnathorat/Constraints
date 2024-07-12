//Write a constraint for  2D dynamic array with number of row and column constraint



class temp;

  rand bit [7:0] arr [4][4];
  
  constraint arr_c {
                     foreach (arr[i,j])
                    {
                      if (i <4) arr[i][j] != arr[i+1][j];
                      if (j<4) arr[i][j] != arr[i][j+1];
                        
                    }}
  
  
  
  
endclass

module top;
  temp t1;
  
  initial begin
    t1 = new();
       
   
      assert(t1.randomize());
      $display("%p",t1.arr);
      
   
  end
endmodule
