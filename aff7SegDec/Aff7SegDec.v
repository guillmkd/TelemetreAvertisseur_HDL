module Aff7SegDec(Byte, Lsq);

parameter OUTPUT_POLARITY = 0; // '0' allume ou '1' allume

input[3:0] Byte;
output[6:0] Lsq;
reg[6:0] iLsq; 

always @(Byte) 
begin    
    case(Byte[3:0])
        0 : iLsq <= 7'b1111110;
        1 : iLsq <= 7'b0110000;
        2 : iLsq <= 7'b1101101;
        3 : iLsq <= 7'b1111001;
        4 : iLsq <= 7'b0110011;
        5 : iLsq <= 7'b1011011;
        6 : iLsq <= 7'b1011111;
        7 : iLsq <= 7'b1110000;
        8 : iLsq <= 7'b1111111;
        9 : iLsq <= 7'b1111011;
		  default : iLsq <= 7'b0110111;
    endcase
end

// Adaptation sur la carte : Msq -> HEX1, Lsq -> HEX0
// Switch SW0 -> SW7

assign Lsq = (OUTPUT_POLARITY == 1) ? iLsq : ~iLsq;

endmodule