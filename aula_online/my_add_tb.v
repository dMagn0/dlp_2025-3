module my_add_tb();

reg [7:0] in1, in2, in3, in4;

initial begin
	in1 = 90;
	in2 = 102;
	in3 = 75; 
	in4 = 2;

end

wire [8:0] soma;

my_add add(in1,in2,soma); // 90 + 102 = 192

wire [8:0] subtracao;

my_minus sub(in1,in3,subtracao); // 

wire [8:0] multiplicacao;

my_time tim(in4,in3,multiplicacao);

wire [8:0] divisao;

my_div div(in2,in4,divisao);

wire [8:0] resto;

my_rest rest(in2,in3,resto);



endmodule 
