module CompteurTelemetre(PWM,ClkRef,Dist);

input PWM, ClkRef;

output[7:0] Dist;

wire[7:0] Cnt;

Compteur8Bits Compteur(ClkRef,PWM,Cnt);

BasculeD8bits BasculeD(Cnt, PWM, Dist);


endmodule