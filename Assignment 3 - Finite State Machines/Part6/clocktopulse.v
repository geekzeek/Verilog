// Rand Almaroof, Zeeshan Karim, Brian Wolk
// Homework 3 Part 6 clocktopulse
// This module implements a pulse generator
// Outputs a pulse every 50 million clock cycles

module clocktopulse (Clk, Pulse);
	
	input Clk;			// Input Clock and Enable
	output reg Pulse;		// Output Pulse
	reg [25:0]Q;			// Counter register
	
	always @ (posedge Clk) begin

		if(Q == 26'd49_999_999) begin
			Q <= 26'b0;			// Reset to 0 at 49,999,999 cycles
			Pulse <= 1;			// Send pulse
		end
		else begin
			Q <= Q + 1'b1;		// Increment counter
			Pulse <= 0;			// No pulse
		end
	end

endmodule