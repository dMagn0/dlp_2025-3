module my_mux
(
	input s, a, b,
	output reg x
);

always @ (*)
begin

if(s==1) x <= b; else x <= a;

end

endmodule
