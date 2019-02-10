/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2
    
    a 1-bit full adder
*/
module fullAdder_1b(A, B, C_in, S, C_out);
    input  A, B;
    input  C_in;
    output S;
    output C_out;

    wire s0, s1, c0, c1, c2;
   
    xor3
    	x0(s0, A, B, C_in);
    nor3
    	n0(s1, A, B, C_in);
    nand2
    	a0(S, s0, s1),
	a1(c0, A,B),
	a2(c1,A,C_in),
	a3(c2,B,C_in);
    nand3
    	a4(C_out, c0, c1, c2);

endmodule
