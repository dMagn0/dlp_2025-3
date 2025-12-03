module rom
(
	input [3:0] addr,
	output reg [16:0] data
);

reg [16:0] mem[15:0];

 
 initial begin 
	mem[0] = {2'd0,15'd1}; 
	mem[1] = {2'd0,15'd1}; 
	mem[2] = {2'd0,15'd2}; 
	mem[3] = {2'd0,15'd2};
	mem[4] = {2'd1,15'd1};
	mem[5] = {2'd0,-15'd3};
	mem[6] = {2'd2,15'd2};
	mem[7] = {2'd2,15'd3};
	mem[8] = {2'd3,15'd2};
	mem[9] = {2'd1,15'd12};
	mem[10] = {2'd1,15'd6};
	mem[11] = {2'd3,15'd1};
	mem[12] = {2'd3,15'd1};
	mem[13] = {2'd3,15'd1};
	mem[14] = {2'd3,15'd1};
	mem[15] = {2'd2,15'd0};
end



always @ (*) data <= mem[addr];

endmodule
