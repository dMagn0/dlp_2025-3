module rom_pc
(
	input clk,
	output [7:0] dado
);

wire [3:0] cnt;

pc pc(clk, cnt);

rom rom(cnt, dado);


endmodule
