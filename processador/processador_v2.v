module processador_v2(
	input CLK_50,
	input signed [14:0] in_chave,
	output [6:0] out_d0, out_d1, out_d2, out_d3,
	output sign
);

wire clk_1s;
clock_1s clock(CLK_50,clk_1s);

wire [3:0]prog_cnt;

program_counter pc(clk_1s, prog_cnt);

wire [17:0] rom_data;

rom rom(prog_cnt, rom_data);

wire signed [14:0] saida_core;

core_9999_v2 core(
	rom_data[14:0],
	in_chave,
	rom_data[17],
	rom_data[16:15],
	clk_1s,
	saida_core
	);

bcd_signed_14bit bcd(saida_core,out_d0, out_d1, out_d2, out_d3,sign);

endmodule

