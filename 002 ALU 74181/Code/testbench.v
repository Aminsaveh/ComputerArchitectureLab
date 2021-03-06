`timescale 1ns / 1ps


module testbench;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg M;
	reg [3:0] S;
	reg Cn;

	// Outputs
	wire [3:0] F;
	wire G;
	wire P;
	wire Cn4;
	wire AeqB;

	// Instantiate the Unit Under Test (UUT)
	alu74181 uut (
		.A(A), 
		.B(B), 
		.M(M), 
		.S(S), 
		.Cn(Cn), 
		.F(F), 
		.G(G), 
		.P(P), 
		.Cn4(Cn4), 
		.AeqB(AeqB)
	);

	initial begin
		// Initialize Inputs
		A = 4'b1001; // a = 9
		B = 4'b0100; // b = 4
		S = 4'b1001; // add func
		//for arithmetic and active-high in and outs:
		Cn = 1;
		M = 0;
		#100;
		//////////////////////////////////////////////////////////
		A = 4'b1100; // 12
		B = 4'b1000; // 8
		S = 4'b0110; //sub func
		//for arithmetic and active-high in and outs:
		Cn = 1;
		M = 0;
		#100;
   




	end
      
endmodule

