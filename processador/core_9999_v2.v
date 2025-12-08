module core_9999_v2(
	input signed [14:0] in_rom,
	input signed [14:0] in_chave,
	input mux,
	input [1:0] op,
	input clk,
	output reg signed[14:0] out
);

wire signed [14:0] saida_ula;

wire signed [14:0] ula_in;

assign ula_in = mux ? in_chave : in_rom;

ula_9999 ula(out, ula_in, op, saida_ula);

always @ (posedge clk) out <= saida_ula;


endmodule
