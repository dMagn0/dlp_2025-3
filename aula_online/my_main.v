module my_main(
	input [7:0] i1, i2,
	output [8:0] soma, subtracao, multiplicacao, divisao, resto
);

my_add add(i1,i2,soma);
my_minus sub(i1,i2,subtracao);
my_time tim(i1,i2,multiplicacao);
my_div div(i1,i2,divisao);
my_rest res(i1,i2,resto);

endmodule 