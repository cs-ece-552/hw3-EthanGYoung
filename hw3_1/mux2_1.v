/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    2-1 mux template
*/
module mux2_1(InA, InB, S, Out);
    input   InA, InB;
    input   S;
    output  Out;

    // YOUR CODE HERE
    wire s0,a0,b0;

    not1
	first(s0, S);
    nand2

        second(a0, s0, InA),
        third(b0, S, InB),
        fourth(Out, a0, b0);

endmodule  // mux2
