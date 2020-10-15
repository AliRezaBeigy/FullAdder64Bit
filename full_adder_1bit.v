module FullAdder1Bit(input wire Ci, input wire A, input wire B, output Co, output S);
	assign S = A ^ B ^ Ci;	
	assign Co = A&B | A&Ci | B&Ci;
endmodule