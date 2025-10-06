module porta_and
(
	input a,b, clk,
	output c,
	output reg g
);

assign c = a&b;
always @ (posedge clk) g <= a&b;
endmodule 