module fullAdder_1b_bench;

    reg  A;
    reg  B;
    reg  C_in;
    reg  [1:0] Sumcalc;
   
    wire	sum;
    wire        C_out;
    wire	Clk;
    //2 dummy wires
    wire rst;
    wire err;
    clkrst my_clkrst( .clk(Clk), .rst(rst), .err(err));
    fullAdder_1b DUT (.A(A), .B(B), .C_in(C_in), .S(sum), .C_out(C_out));
  
    initial begin
        A = 1'b0;
	B = 1'b0;
	C_in = 1'b0;
	#3200 $stop;
    end
   
    always@(posedge Clk) begin
	    A = $random;
	    B = $random;
	    C_in = $random;
    end
   
    always@(negedge Clk) begin
	    Sumcalc = A+B+C_in;
	    $monitor("A : %x, B : %x, C_in : %x, Sum : %x, C_out : %x", A, B, C_in, sum, C_out);
	
	    if (Sumcalc[0] !== sum) $display ("ERRORCHECK Sum error");
	    if (Sumcalc[1] !== C_out) $display ("ERRORCHECK c_out error");
    end
endmodule // fullAdder_1b
