module ula
(
	input [1:0] op, // 0 -> + 1 -> - 2 -> * 3 -> /
	input [15:0] in1, in2,
	output reg [15:0] out
);

always @ (*)
	case(op)
		0: out = in1 + in2;
		1: out = in1 - in2;
		2: out = in1 * in2;
		3: out = in1 / in2;
	endcase

endmodule
