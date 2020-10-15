module FullAdder64Bit(input wire Ci, input wire [63:0] A, input wire [63:0] B, output [63:0] S, output Co);
	FullAdder16Bit fa16b0(.Ci(Ci), .A(A[15:0]), .B(B[15:0]), .S(S[15:0]), .Co(Co0));
	FullAdder16Bit fa16b1(.Ci(Co0), .A(A[31:16]), .B(B[31:16]), .S(S[31:16]), .Co(Co1));
	FullAdder16Bit fa16b2(.Ci(Co1), .A(A[47:32]), .B(B[47:32]), .S(S[47:32]), .Co(Co2));
	FullAdder16Bit fa16b3(.Ci(Co2), .A(A[63:48]), .B(B[63:48]), .S(S[63:48]), .Co(Co));
endmodule
