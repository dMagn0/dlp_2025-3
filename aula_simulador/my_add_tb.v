module my_add_tb();

reg [7:0] in1, in2;

initial begin
	in1 = 90;
	in2 = 102;

end

wire [8:0] soma;

my_add nome(in1,in2,soma);

endmodule 
