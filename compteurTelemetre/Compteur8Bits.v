module Compteur8Bits(Clk, Signal, Q);

input Clk;
input Signal;

output[7:0] Q;
reg[7:0] Q;

reg Signal_prec;

always@(posedge(Clk))
begin
	Q <= Q + 1;
	if (!Signal_prec && Signal)
	begin
		Q <= 0;
	end
	Signal_prec <= Signal;
end


endmodule