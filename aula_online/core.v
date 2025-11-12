module core (
	input clk,
	input [1:0] ula_op,
	input [15:0] ula_in1, ula_in2,
	output reg [15:0] ula_out
);

wire [15:0] wire_ula_out;
ula ula(ula_op, ula_in1, ula_in2, wire_ula_out);

//reg [15:0] r_ula_out;

always @ (posedge clk) /*r_ula_out*/ ula_out <= wire_ula_out;

//assign ula_out = r_ula_out;
endmodule 