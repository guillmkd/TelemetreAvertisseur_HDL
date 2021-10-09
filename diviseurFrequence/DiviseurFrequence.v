module DiviseurFrequence(ClkIn,ClkOut);

parameter BUS_SIZE = 5;
parameter NBT = 100;
parameter NBTON = 25;
parameter POLARITY = 1;

input ClkIn;
output ClkOut;

reg ClkOut;

reg[BUS_SIZE-1:0] Cnt;



always @(negedge(ClkIn))
begin
	
	
	if(Cnt < NBT)
	begin
		
		Cnt <= Cnt+1;
	end
	else
	begin
		Cnt <= 0;
	end
	
	
	if(Cnt < NBTON)
	begin
		ClkOut <= POLARITY;
	end
	else
	begin
		ClkOut <= ~POLARITY;
	end



end







endmodule