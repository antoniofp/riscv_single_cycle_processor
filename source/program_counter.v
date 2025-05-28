module program_counter(
	input wire clk,
	input wire [31:0] pc_next,     // next PC value
	output reg [31:0] pc           // current PC value
);

	always @(posedge clk) begin
		pc <= pc_next;
	end

endmodule
