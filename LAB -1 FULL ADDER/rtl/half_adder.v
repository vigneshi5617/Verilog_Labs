/********************************************************************************************

Webpage: https://github.com/vigneshi5617

Filename:	half_adder.v   

Description:	Half adder design 

Date:		01/16/2022

Author:		Vignesh Anand

Email:		vigneshi5617@gmail.com

Version:	1.0

*********************************************************************************************/



module half_adder(a_in,
	          b_in,
		  sum_out,
		  carry_out);

  input a_in,
	b_in;

  output sum_out,
	 carry_out;


  //By default all the input and output are wired dataTypes

//We use "assign" to put values in the output . So for that LHS has to WIRED DATATYPE


  assign sum_out=a_in^b_in;
  assign carry_out=a_in&b_in;

endmodule





