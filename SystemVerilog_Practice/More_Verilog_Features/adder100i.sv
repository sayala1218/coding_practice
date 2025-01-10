module adder100i( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    add1 add_gen0 (.a(a[0]), .b(b[0]), .cin(cin), .cout(cout[0]), .sum(sum[0]));
    
    genvar i;
    generate
        for( i = 1; i < 100; i++) begin : generate_state
            add1 add_gen (.a(a[i]), .b(b[i]), .cin(cout[i-1]), .cout(cout[i]), .sum(sum[i]));
        end

    endgenerate

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    logic [1:0] full_sum;
    assign full_sum = a + b + cin;
    
    assign sum = full_sum[0];
    assign cout = full_sum[1];

endmodule



