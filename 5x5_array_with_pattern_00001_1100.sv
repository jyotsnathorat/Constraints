/*I have a 5x5 array. Write a constraint to generate the following pattern(odd side 1 even side adding on right.
00001
11000
00111
11110
11111
*/

class abc;
  rand bit num[5][5];
    
  constraint num_c {
    foreach (num[i]){
      foreach (num[j]){
        if( (i % 2) ==1)
          {
             if (j < (i+1))
             {
               num[i][j] ==1'b1;
               
             }
             else
               num[i][j] ==1'b0;
          }             
          else {
            if(i<(j)) 
            num[i][4-j] == 1'b0;
            else num[i][4-j] == 1'b1;           
             }
         
          }}}
endclass


module check;
  abc a;
  initial
    begin
      repeat(10)
        begin
      a = new();
      a.randomize();
      $display("array is  %p",a.num);
         end
    end
endmodule
