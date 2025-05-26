module main(
	input clk,
	input [6:0] op,
	input [2:0] funct3,
	input funct7_5,
	output branch, jump, mem_write, alu_src, reg_write,
	output [1:0] result_src, imm_src,
	output [2:0] alu_control
);
	// señal interna para conectar main_decoder con alu_decoder
	wire [1:0] alu_op;
	
	// instancia del decodificador principal
	main_decoder md(
		.clk(clk),
		.op(op),
		.branch(branch),
		.jump(jump),
		.mem_write(mem_write),
		.alu_src(alu_src),
		.reg_write(reg_write),
		.result_src(result_src),
		.imm_src(imm_src),
		.alu_op(alu_op)
	);
	
	// instancia del decodificador alu
	alu_decoder ad(
		.alu_op(alu_op),
		.funct3(funct3),
		.op5(op[5]),        // extraemos el bit 5 del opcode
		.funct7_5(funct7_5),
		.alu_control(alu_control)
	);
	
endmodule