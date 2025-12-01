module core_9999(
	input signed [14:0] in,
	input [1:0] op,
	input clk,
	output reg signed[14:0] out
);

wire signed [14:0] saida_ula;

ula_9999 ula(out, in, op, saida_ula);

always @ (posedge clk) out <= saida_ula;


endmodule
