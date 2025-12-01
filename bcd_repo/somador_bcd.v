module somador_bcd(
	input signed [14:0] in,
	input [1:0] op,
	input clk,
	output [6:0] out_d0, out_d1, out_d2, out_d3,
	output sign
);

wire signed [14:0] saida_core;

core_9999 core(in,op,clk,saida_core);

bcd_signed_14bit bcd(saida_core,out_d0, out_d1, out_d2, out_d3,sign);

endmodule
