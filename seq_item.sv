class seqitem extends uvm_sequence_item;
		//control information
		rand bit [3:0] addr;
		rand bit 	   wen;
		rand bit       ren;

		//payload information
		rand bit [7:0] w_data;

		//analysis information
		bit [7:0] rd_data;
		//factory registration
		`uvm_object_utils_begin(seqitem)
		`uvm_field_int(addr,UVM_BIN|UVM_ALL_ON)
		`uvm_field_int(wen,UVM_BIN|UVM_ALL_ON)
		`uvm_field_int(ren,UVM_BIN|UVM_ALL_ON)
		`uvm_field_int(w_data,UVM_BIN|UVM_ALL_ON)
		`uvm_object_utils_end
		function new(string name="seqitem");
			super.new(name);
		endfunction
		//constraint
		constraint c1 { wen != ren;}
endclass
