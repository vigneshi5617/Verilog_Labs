/********************************************************************************************

Webpage: https://github.com/vigneshi5617

Filename:	full_adder.v   

Description:	full adder design 

Date:		01/16/2022

Author:		Vignesh Anand

Email:		vigneshi5617@gmail.com

Version:	1.0

*********************************************************************************************/

`include  "half_adder.v"
module full_adder(a_in,
	          b_in,
		  c_in,
		  sum_out,
		  carry_out);
 // Step 1. Write down the directions for the ports	 
  input a_in,b_in,c_in;
  output sum_out,carry_out;

 // Step 2. Declare the internal wires 
  wire w1,w2,w3;

   // Step 3. Instantiate two Half-Adders

  half_adder HA1(.a_in(a_in) , .b_in(b_in) , .sum_out(w1) , .carry_out(w2));

//We are defining a explicit port connection in here

  half_adder HA2(.a_in(w1) , .b_in(c_in) , .sum_out(sum_out), .carry_out(w3));


 // Step 4. Instantiate the OR gate
  or or1(carry_out,w2,w3);

 endmodule 

  