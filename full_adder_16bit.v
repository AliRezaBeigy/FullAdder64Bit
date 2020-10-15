module FullAdder16Bit(input wire Ci, input wire [15:0] A, input wire [15:0] B, output [15:0] S, output Co);
	FullAdder4Bit fa4b0(.Ci(Ci), .A(A[3:0]), .B(B[3:0]), .S(S[3:0]), .Co(Co0));
	FullAdder4Bit fa4b1(.Ci(Co0), .A(A[7:4]), .B(B[7:4]), .S(S[7:4]), .Co(Co1));
	FullAdder4Bit fa4b2(.Ci(Co1), .A(A[11:8]), .B(B[11:8]), .S(S[11:8]), .Co(Co2));
	FullAdder4Bit fa4b3(.Ci(Co2), .A(A[15:12]), .B(B[15:12]), .S(S[15:12]), .Co(Co));
endmodule