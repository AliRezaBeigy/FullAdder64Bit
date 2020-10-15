module FullAdder4Bit(input wire Ci, input wire [3:0] A, input wire [3:0] B, output [3:0] S, output Co);
	FullAdder1Bit fa1b0(.Ci(Ci), .A(A[0]), .B(B[0]), .S(S[0]), .Co(Co0));
	FullAdder1Bit fa1b1(.Ci(Co0), .A(A[1]), .B(B[1]), .S(S[1]), .Co(Co1));
	FullAdder1Bit fa1b2(.Ci(Co1), .A(A[2]), .B(B[2]), .S(S[2]), .Co(Co2));
	FullAdder1Bit fa1b3(.Ci(Co2), .A(A[3]), .B(B[3]), .S(S[3]), .Co(Co));
endmodule