module fadd (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    logic [15:0] out_low, out_high;
    logic carry;
    add16 low ( .a(a[15:0]), .b(b[15:0]), .cin(0), .sum(out_low), .cout(carry));
    add16 high ( .a(a[31:16]), .b(b[31:16]), .cin(carry), .sum(out_high), .cout());
    
    assign sum = {out_high, out_low};
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    logic [1:0] full_sum;
    assign full_sum = a + b + cin;
    
    assign sum = full_sum[0];
    assign cout = full_sum[1];

endmodule