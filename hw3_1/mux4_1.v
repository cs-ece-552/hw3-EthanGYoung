/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    4-1 mux template
*/
module mux4_1(InA, InB, InC, InD, S, Out);
    input        InA, InB, InC, InD;
    input [1:0]  S;
    output       Out;
    wire	 InTop,InBot;
    
    mux2_1 mux_1(InA, InC, S[1], InBot);
    mux2_1 mux_2(InB, InD, S[1], InTop);

    mux2_1 mux_3(InBot, InTop, S[0], Out);

endmodule
