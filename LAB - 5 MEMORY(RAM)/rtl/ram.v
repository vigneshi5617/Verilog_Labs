/********************************************************************************************

Webpage: https://github.com/vigneshi5617

Filename:	ram.v   

Description:	Asynchronous Single port Random access memory (16x8)

Date:		01/16/2022

Author:		Vignesh Anand

Email:		vigneshi5617@gmail.com		 

Version:	1.0

*********************************************************************************************/


  module ram (data,
              we,
              enable,
              addr);

  input we,
        enable;

  input [3:0] addr;

  input [7:0] data;


//Step 1 : Declare a 8 bit wide memory having 16 Locations

  reg [7:0] mem [15:0];  //Array which is 8 bits wide and 16 bits in depth
//Step 2 : Understand the logic for Writing data into a memory location
    always@(data,we,enable,addr)
      if (we && !enable)
	 mem[addr]=data;

//Step 3: Understand the logic for reading the data from memory location
  assign data = (enable && !we) ? mem[addr] : 8'hzz;

endmodule

  

  
