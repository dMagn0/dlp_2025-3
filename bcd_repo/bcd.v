module bcd
(
	input[0:3] dig,
	output reg a,b,c,d,e,f,g
);

always @ (*) 
begin
	case (dig)
		0:	begin
					a <= 0;
					b <= 0;
					c <= 0;
					d <= 0;
					e <= 0;
					f <= 0;
					g <= 1;
					end
		1:	begin
					a <= 1;
					b <= 0;
					c <= 0;
					d <= 1;
					e <= 1;
					f <= 1;
					g <= 1;
					end
					
		2:	begin
					a <= 0;
					b <= 0;
					c <= 1;
					d <= 0;
					e <= 0;
					f <= 1;
					g <= 0;
					end
		3:	begin
					a <= 0;
					b <= 0;
					c <= 0;
					d <= 0;
					e <= 1;
					f <= 1;
					g <= 0;
					end
		4:	begin
					a <= 1;
					b <= 0;
					c <= 0;
					d <= 1;
					e <= 1;
					f <= 0;
					g <= 0;
					end
		5:	begin
					a <= 0;
					b <= 1;
					c <= 0;
					d <= 0;
					e <= 1;
					f <= 0;
					g <= 0;
					end		
		6:	begin
					a <= 0;
					b <= 1;
					c <= 0;
					d <= 0;
					e <= 0;
					f <= 0;
					g <= 0;
					end
		7:	begin
					a <= 0;
					b <= 0;
					c <= 0;
					d <= 1;
					e <= 1;
					f <= 1;
					g <= 1;
					end
		8:	begin
					a <= 0;
					b <= 0;
					c <= 0;
					d <= 0;
					e <= 0;
					f <= 0;
					g <= 0;
					end
		9:	begin
					a <= 0;
					b <= 0;
					c <= 0;
					d <= 1;
					e <= 1;
					f <= 0;
					g <= 0;
					end
		default: begin
					a <= 1'bx;
					b <= 1'bx;
					c <= 1'bx;
					d <= 1'bx;
					e <= 1'bx;
					f <= 1'bx;
					g <= 1'bx;
					end
	endcase
end
endmodule
