module sim_atv_tb();

reg clk;
reg [1:0] op;
reg [15:0] in;


initial begin
	clk = 0;
	op = 0;
	in = 5;
	
#10 
	clk = 1;
#10 
	clk = 0;
	op = 2;
#10 
	clk = 1;
#10 
	clk = 0;
	op = 0;
	in = 1;
#10 
	clk = 1;
#10 
	clk = 0;
end

wire [15:0] out;
core_atividade_ula core(clk, op, in, out);


endmodule 