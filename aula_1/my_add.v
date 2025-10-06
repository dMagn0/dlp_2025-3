//aula dia 29/09 - somador
module my_add(
	input [1:0] a, b, //barramento não sinalado
//	input signed [1:0] a, b, //barramento sinalado
	output[2:0] c
);
assign c = a+b;

endmodule
