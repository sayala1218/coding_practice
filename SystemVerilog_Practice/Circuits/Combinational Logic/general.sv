module wires (
    input in,
    output out);

    assign out = in;

endmodule

module ground_ (
    output out);

    assign out = 0;

endmodule

module nor_ (
    input in1,
    input in2,
    output out);

    assign out = ~(in1 | in2);

endmodule

module inv_and (
    input in1,
    input in2,
    output out);

    assign out = in1 & ~in2;

endmodule

module X_NOR (
    input in1,
    input in2,
    input in3,
    output out);

    assign out = in3 ^ ~(in1 ^in2);

endmodule


module gates( 
    input a, b,
    output out_and,
    output out_or,
    output out_xor,
    output out_nand,
    output out_nor,
    output out_xnor,
    output out_anotb
);

    assign out_and = a & b;
    assign out_or  = a | b;
    assign out_xor = a ^ b;
    assign out_nand = ~( a & b );
    assign out_nor  = ~( a | b );
    assign out_xnor = ~( a ^ b );
    assign out_anotb = a & ~b; 

endmodule


module chip_7420 ( 
    input p1a, p1b, p1c, p1d,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    assign p1y = ~& {p1a, p1b, p1c, p1d};

    assign p2y = ~& {p2a, p2b, p2c, p2d};


endmodule


module truth_tables( 
    input x3, // A
    input x2, // B
    input x1,  // C --  three inputs
    output f   // one output
);

    assign f = ~x1 &  x2  & ~x3 |
                x1 &  x2  & ~x3 | 
                x1 & ~x2  &  x3 | 
                x1 &  x2  &  x3;

endmodule

module equality ( input [1:0] A, 
                    input [1:0] B, 
                    output z ); 

    assign z = (A == B);

endmodule

module q4a ( input x, 
                    input y, 
                    output z);

    assign z = (x^y) & x;

endmodule

module q4b ( input x, input y, output z );

    // Alternate solution: Brute force
    // assign z = ~x & ~y |
    //             x & y;


    //  XNOR solution
    assign z = ~(x ^ y);

endmodule

module q4 (input x, input y, output z);

    logic z0, z1, z2, z3;

    q4a q1 (.x(x), .y(y), .z(z0));
    q4b q2 (.x(x), .y(y), .z(z1));

    assign z2 = z0 | z1;
    assign z3 = z0 & z1;

    assign z = z2 ^ z3;
    


endmodule
