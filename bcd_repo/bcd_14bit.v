module bcd_14bit (
	input [14:0] in,
	output [6:0] out_d0, out_d1, out_d2, out_d3
);

wire [6:0] dig01;

wire [6:0] dig23;

assign dig01 = in%100;

assign dig23 = in/100;

bcd99 out0(dig01,out_d0, out_d1);

bcd99 out1(dig23,out_d2,out_d3);


endmodule 