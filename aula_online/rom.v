module rom
(
	input [3:0] addr,
	output reg [7:0] data
);

reg [7:0] mem[15:0];

 initial begin 
	mem[0] = 1;
	mem[1] = 3;
	mem[2] = 5;
	mem[3] = 7;
	mem[4] = 9;
	mem[5] = 11;
	mem[6] = 13;
	mem[7] = 15;
	mem[8] = 17;
	mem[9] = 19;
	mem[10] = 21;
	mem[11] = 23;
	mem[12] = 25;
	mem[13] = 27;
	mem[14] = 29;
	mem[15] = 31;
end



always @ (*) data <= mem[addr];

endmodule
