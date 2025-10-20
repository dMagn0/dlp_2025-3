module my_rest(
	input [7:0] i1, i2,
	output [8:0] out
);

assign out = i1%i2;

endmodule

