/********************************************************************************************

Webpage: https://github.com/vigneshi5617

Filename:	half_adder_tb.v   

Description:	One bit Half adder TestBench 


Date:		01/16/2022

Author:		Vignesh Anand

Email:		vigneshi5617@gmail.com

Version:	1.0

*********************************************************************************************/


module half_adder_tb();


  reg a,b;
  wire sum,carry; 

 //To collect the data we initialize wire data=type and to derive the input we use "reg"

 integer i;

//Instantaiting the Half adder

 half_adder HA1(.a_in(a),.b_in(b),.sum_out(sum),.carry_out(carry));

  initial
  begin
	//Initialize the variables
    a=1'b0;
    b=1'b0; 
end

  initial
  begin
    for(i=0;i<4;i=i+1)
    begin
      {a,b}=i;
      #10;
   end
  end

  initial $monitor("Input a=%b,b=%b,Output sum =%b,carry=%b"
                    ,a,b,sum,carry);

initial #100 $finish ;

endmodule
	
	 
 	

	
  

