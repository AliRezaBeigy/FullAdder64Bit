module Test4Bit;
	reg Ci;
	reg [3:0] A, B;
	wire [3:0] S;
	wire Co;
	FullAdder4Bit fa4b(.Ci(Ci), .A(A), .B(B), .S(S), .Co(Co));
	initial 
	begin
		assign Ci = 0;
		assign A = 1;
		assign B = 0;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Ci, S, Co);

		assign Ci = 0;
		assign A = 15;
		assign B = 1;
		#10 
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Ci, S, Co);

		assign Ci = 1;
		assign A = 1;
		assign B = 1;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Ci, S, Co);

		assign Ci = 0;
		assign A = 0;
		assign B = 0;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Ci, S, Co);

		assign Ci = 0;
		assign A = 2;
		assign B = 2;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Ci, S, Co);
	end
endmodule