module instruction_memory(
	input wire [31:0] addr,       
	output wire [31:0] instr       
);


	reg [31:0] rom [0:1023];      // 1024 palabras de 32 bits (4KB)
	
	initial begin
		$readmemh("program.hex", rom);
		
	end
	

	assign instr = rom[addr]; 
	


endmodule