module program_counter(
	input wire clk,
	input wire reset,				
	input wire [31:0] pc_next,
	output reg [31:0] pc
);

	always @(posedge clk or posedge reset) begin	
		if (reset)
			pc <= 32'h00000000;				
		else
			pc <= pc_next;					
	end

endmodule