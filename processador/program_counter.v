module program_counter(
	input clk,
	output reg [3:0]pc = 0
);


always @(posedge clk) begin
	pc <= pc +1;
	end
	
endmodule

