module clock_1s(
	input CLK_50,
	output reg CLK_1S
);


reg [25:0] cnt_temp;
//reg CLK_2S;
//reg CLK_1S;


always @(posedge CLK_50) begin
	if (cnt_temp < 24999999) begin
		cnt_temp <= cnt_temp+1;
		end
	else begin
		cnt_temp <= 0;
		CLK_1S <= ~CLK_1S;
		end
	end


endmodule
