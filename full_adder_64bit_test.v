module Test64Bit;
	reg Ci;
	reg [63:0] A, B;
	wire [63:0] S;
	wire Co;
	FullAdder64Bit fa64b(.Ci(Ci), .A(A), .B(B), .S(S), .Co(Co));
	initial 
	begin
		assign Ci = 0;
		assign A = 1;
		assign B = 0;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Ci, S, Co);

		//assign Ci = 0;
		//assign A = 18446744073709551615;
		//assign B = 1;
		//#10 
		//$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Ci, S, Co);

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
		assign A = 65465;
		assign B = 79845;
		#10
		$display("A: %0d, B: %0d, Carry: %0d, Sum: %0d ,CarryOut: %0d", A, B, Ci, S, Co);
	end
endmodule