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
    
    mux2_1 mux_1(.InA(InA), .InB(InC), .S(S[1]), .Out(InBot));
    mux2_1 mux_2(.InA(InB), .InB(InD), .S(S[1]), .Out(InTop));

    mux2_1 mux_3(.InA(InBot), .InB(InTop), .S(S[0]), .Out(Out));

endmodule
