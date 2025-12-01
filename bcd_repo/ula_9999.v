module ula_9999 (
	input signed [14:0] in1, in2,
	input [1:0] op, // 0 soma, 1 sub, 2 mult, 3 div
	output reg signed [14:0] out
);


always @ (*)
begin
	case (op)
		0:	begin
			out <= in1+in2;
		end
		1:	begin
			out <= in1-in2;
		end
		2:	begin
			out <= in1*in2;
		end
		3:	begin
			out <= in1/in2;
		end
	endcase
end


endmodule
