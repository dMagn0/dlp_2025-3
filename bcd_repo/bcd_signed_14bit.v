module bcd_signed_14bit (
	input signed [14:0] in,
	output [6:0] out_d0, out_d1, out_d2, out_d3, 
	output sign
);


wire [14:0] bcd_in;

assign sign = ~in[14];

assign bcd_in = (in[14])? (-in) : (in);

bcd_14bit bcd( bcd_in[13:0] ,out_d0, out_d1, out_d2, out_d3);

endmodule 