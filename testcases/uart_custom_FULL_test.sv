class uart_custom_FULL_test extends uart_base_test;
	`uvm_component_utils(uart_custom_FULL_test)
	
	uart_sequence lhs_seq;
	uart_sequence rhs_seq;
	int baudrate;
	function new(string name = "uart_custom_RXTX_test", uvm_component parent);
		super.new(name, parent);
	endfunction: new

	virtual function void build_phase(uvm_phase phase);
		super.build_phase(phase);

		assert(randomize(baudrate) with { baudrate inside {[4800:115200]};});

		set_mode("FullDuplex");
		assert (lhs_cfg.randomize())
		else
			`uvm_fatal("build_phase", "Randomize lhs_cfg failed");

		set_baudrate("lhs", baudrate);
		set_baudrate("rhs", baudrate);	
		set_data_width("lhs", lhs_cfg.data_width);
		set_data_width("rhs", lhs_cfg.data_width);
		set_stop_width("lhs", lhs_cfg.stop_width);
		set_stop_width("rhs", lhs_cfg.stop_width);
		set_parity("lhs", lhs_cfg.parity_type);
		set_parity("rhs", lhs_cfg.parity_type);
		
	endfunction: build_phase

	virtual task run_phase(uvm_phase phase);
		phase.raise_objection(this);

		lhs_seq = uart_sequence::type_id::create("lhs_seq", this);
		rhs_seq = uart_sequence::type_id::create("rhs_seq", this);

		for (int i=0; i<3; i++) begin
			lhs_seq.start(uart_env.uart_lhs_agent.sequencer);
			rhs_seq.start(uart_env.uart_rhs_agent.sequencer);
		end

		phase.drop_objection(this);
	endtask: run_phase

endclass


