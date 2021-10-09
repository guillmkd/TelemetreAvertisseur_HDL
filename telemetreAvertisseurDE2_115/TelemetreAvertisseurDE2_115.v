module TelemetreAvertisseurDE2_115(PWM, CLOCK_50, HEX2, HEX1, HEX0, LEDR);

input PWM, CLOCK_50;

output[6:0] HEX2, HEX1, HEX0;
output LEDR;

TelemetreAvertisseur Telemetre(PWM,ClOCK_50,HEX2,HEX1,HEX0,LEDR);

endmodule