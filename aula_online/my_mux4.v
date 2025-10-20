module my_mux4
(
	input [1:0] s,
	input a, b, c, d,
	output reg x

);

always @ (*)
	case (s)
		0: x <= a;
		1: x <= b;
		2: x <= c;
		3: x <= d;
	endcase
endmodule
