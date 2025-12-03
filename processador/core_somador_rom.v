module core_somador_rom(
	input CLK_50,
	output [6:0] out_d0, out_d1, out_d2, out_d3,
	output sign
);

wire clk_1s;
clock_1s clock(CLK_50,clk_1s);

reg [3:0]prog_cnt = 0;

always @(posedge clk_1s) begin
	prog_cnt <= prog_cnt +1;
	end
wire [16:0] rom_data;

rom rom(prog_cnt, rom_data);

somador_bcd somador(
	rom_data[14:0],
	rom_data[16:15],
	clk_1s,
	out_d0, out_d1, out_d2, out_d3,
	sign
);


endmodule
