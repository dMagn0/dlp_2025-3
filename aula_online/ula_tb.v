module ula_tb();

reg [1:0] s;
reg [15:0] in1;
reg [15:0] in2;
wire [15:0] out;

initial begin
	s = 0; // +
	in1 = 15;
	in2 = 5;
#100
	in1 = 10;
#100
	s = 1; // -
	in2 = 5;
#100
	in1 = 5;
#100

	s = 2; // *
	in1 = 15;
#100
	in2 = 3;
#100

	s = 3; // /
	in1 = 5;
#100
	in1 = 4;
#100;

end

ula my_ula(s, in1, in2, out);

endmodule
