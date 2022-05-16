/********************************************************************************************



Webpage: https://github.com/vigneshi5617

Filename:	ram_tb.v   

Description:	Testbench for Single port RAM 

Date:		01/16/2022

Author:		Vignesh Anand

Email:		vigneshi5617@gmail.com	
		 

Version:	1.0

*********************************************************************************************/



module ram_tb();
  
  wire [7:0] data;
  reg [3:0] addr;
  reg we,enable;
  reg [7:0] tempd;
  
  integer l;

//Step 1 : Instatantiate the Ram module and connect the ports

  ram DUT(data,we,enable,addr);  //This is a Implicit port Connection, recommended 

 assign data=(we && !enable) ? tempd :8'hzzz;

  task initialize();
  begin
    we=1'b0;enable=1'b0;tempd=8'h00;
  end
  endtask

//Step2: define the body of the task named "stimulus" to initialize the 
//"addr" and "tmpd" inputs through i and j variables
//use i initialization for "addr" and j initialization for "tempd"

  task stimulus(input [3:0] i,input [7:0] j);
  begin 
   
   //Thus task "stimulus" is used to assign the address and temp values which will be given as i/p to it

   //-------------- define the body of the task here ------------------//

   addr=i;
   tempd=j;
  end
  endtask

//Step 3 : Understand the various tasks defined in the testbench

  task write();
  begin
    we=1'b1;
    enable=1'b0; 
  end
  endtask

  task read();
  begin
    we=1'b0;
    enable=1'b1;
  end
  endtask


  task delay;
  begin
    #10;
  end
  endtask


  initial
  begin
    initialize();
    delay;
    write();
    for(l=0;l<16;l=l+1)
    begin
      stimulus(l,l);
      delay;
   end

  initialize();
  delay;
  read();
 
  for(l=0;l<16;l=l+1)
  begin
    stimulus(l,l);
    delay;
  end

  delay;
  $finish;
 end

endmodule

 