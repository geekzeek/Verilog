// Zeeshan Karim
// HexHELO module for Homework 1 Part 4

module HexHELO( c,  hex);
	input [2:0]c;
	output [0:6]hex;
	
	assign hex[0] = ~(c[0] & ~c[2]);
	assign hex[1] = ~(((c[0] & c[1]) | (~c[0] & ~c[1])) & ~c[2]);
	assign hex[2] = ~(((c[0] & c[1]) | (~c[0] & ~c[1])) & ~c[2]);
	assign hex[3] = ~((c[0] | c[1]) & ~c[2]);
	assign hex[4] = ~(~c[2]);
	assign hex[5] = ~(~c[2]);
	assign hex[6] = ~(~c[1] & ~c[2]);
endmodule