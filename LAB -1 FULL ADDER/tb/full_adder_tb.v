/********************************************************************************************

Webpage: https://github.com/vigneshi5617


Filename:	full_adder_tb.v   

Description:	One bit Full adder TestBench 

Date:		01/16/2022

Author:		Vignesh Anand

Email:		vigneshi5617@gmail.com
			 

Version:	1.0

*********************************************************************************************/


module full_adder_tb();
 
  reg a,b,c_in;

  wire sum,carry;

  integer i;

//To collect the data we initialize we define a wire datatype & to drive the input we have defined a reg datatype

//Instatiating a Full adder ckt

  full_adder FA1( .a_in(a), .b_in(b) , .c_in(c_in) , .sum_out(sum) , .carry_out(carry));

  initial 
  begin
    

 //initialize the variables
   a=1'b0;
   b=1'b0;

  c_in=1'b0; 

  end

  initial
  begin
  for(i=0; i<8;i=i+1)
    begin
     {a,b,c_in}=i;
      #10;                //This ensures that the not all the simulation happens at the same time.
    end
    end
  



initial $monitor("Input a=%b,b=%b,c=%b, Output sum=%b, carry=%b" ,a,b,c_in,sum,carry);

initial #100 $finish ;

endmodule




