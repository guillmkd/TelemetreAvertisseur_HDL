module Compteur8Bits(Clk, Signal, Q);

input Clk;
input Signal;

output[0:7] Q;
reg[0:7] Q;

reg Signal_prec;

always@(posedge(Clk))
begin
	if(Q<255)
	begin
		Q <= Q + 1;
	end
	if (!Signal_prec && Signal)
	begin
		Q <= 0;
	end
	Signal_prec <= Signal;
end


endmodule