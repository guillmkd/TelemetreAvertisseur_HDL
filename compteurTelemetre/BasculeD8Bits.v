module BasculeD8bits(D, Clk, Q);

input[7:0] D;
input Clk;

output [7:0] Q;
reg [7:0] Q;

always @(negedge(Clk))
begin
	Q = D;
end


endmodule

