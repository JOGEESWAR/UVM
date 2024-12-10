`include "uvm_macros.svh"
import uvm_pkg::*;
`include "seq_item.sv"
module top;
//creating handles
	seqitem s1,s2,s3;
	initial begin
	s1=seqitem::type_id::create("s1"); //creating memory for s1
	s2=seqitem::type_id::create("s2"); //creating memory for s2
	s1.randomize();
	`uvm_info("","Printing s1,s2 after randomizing s1 and before copy and clone methods",UVM_LOW);
	s1.print();	    //print s1
	s2.print();    //print s2
//	s3.print();   //print s3 will give fatal s3 is just a handle no object is created
	s2.copy(s1); //copying s1 to s2 : copies the values
//	$cast(s3,s2.clone()); //create an object and copies s1 to s2
	$cast(s3,s1.clone());
	`uvm_info("","After methods",UVM_LOW);
	s1.print();
	s2.print();
	s3.print();
	end
endmodule

