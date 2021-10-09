module AvertisseurLED(Dist,Led);

parameter BUS_SIZE = 8;
parameter MIN_VAL = 15;

input[BUS_SIZE-1:0] Dist;

output Led;
reg Led;

always @(Dist)
begin
	if(Dist <= MIN_VAL)
	begin
		Led <= 1;
	end
	else
	begin
		Led <= 0;
	end
end

endmodule