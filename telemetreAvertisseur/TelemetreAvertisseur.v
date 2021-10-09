module TelemetreAvertisseur(PWM,Clk,AFF1,AFF2,AFF3,LED);

input PWM, Clk;

output[6:0] AFF1, AFF2, AFF3;
output LED;

wire ClkRef;
wire[7:0] Dist;
wire[3:0] C, D, U;

DiviseurFrequence #(13, 7350, 3675, 1) DivFreq(Clk,ClkRef);

CompteurTelemetre Telemetre(PWM, ClkRef, Dist);

AvertisseurLED #(8, 15) Avertisseur(Dist, LED);

SeparateurNumeration8Bits Separateur(Dist, C, D, U);

Aff7SegDec #(0) AfficheurCentaines(C,AFF1);
Aff7SegDec #(0) AfficheurDizaines(D, AFF2);
Aff7SegDec #(0) AfficheurUnites(U, AFF3);


endmodule