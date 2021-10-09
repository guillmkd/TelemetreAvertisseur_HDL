module SeparateurNumeration8Bits(Val, C, D, U);

input[7:0] Val;

output[3:0] C, D, U;
reg[3:0] C,D,U;

reg[6:0] V;


always @(Val)
begin
	C <= Val/100;
	V <= Val%100;
	D <= V/10;
	U <= V%10;
	
end

endmodule