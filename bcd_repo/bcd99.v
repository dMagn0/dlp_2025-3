module bcd99 (
	input [6:0] in,
	output [6:0] out_d0, out_d1
);

wire [3:0] dig0;

wire [3:0] dig1;

assign dig0 = in%10;

assign dig1 = in/10;

bcd out0(dig0,out_d0[0],out_d0[1],out_d0[2],out_d0[3],out_d0[4],out_d0[5],out_d0[6]);

bcd out1(dig1,out_d1[0],out_d1[1],out_d1[2],out_d1[3],out_d1[4],out_d1[5],out_d1[6]);


endmodule 