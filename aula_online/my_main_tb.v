module my_main_tb();

reg [7:0] in1, in2;

initial begin
	in1 = 25;
	in2 = 3;

end

wire [8:0] soma;

//my_add add(in1,in2,soma); // 90 + 102 = 192

wire [8:0] subtracao;

//my_minus sub(in1,in2,subtracao); // 

wire [8:0] multiplicacao;

//my_time tim(in1,in2,multiplicacao);

wire [8:0] divisao;

//my_div div(in1,in2,divisao);

wire [8:0] resto;

//my_rest rest(in1,in2,resto);


my_main main(in1,in2, soma, subtracao,multiplicacao,divisao,resto);
endmodule 
