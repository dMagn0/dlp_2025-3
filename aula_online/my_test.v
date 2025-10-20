module my_test();

reg [7:0] in1, in2;

initial begin
	in1 = 102;
	in2 = 90;

end

wire [8:0] subtracao;

my_minus nome(in1,in2,subtracao);

endmodule 
