module add (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum    
);
    logic carry;
    logic [15:0] sum_low, sum_high;

    add16 low (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum_low), .cout(carry));
    add16 high (.a(a[31:16]), .b(b[31:16]), .cin(carry), .sum(sum_high), .cout());

    assign sum = {sum_high, sum_low};

endmodule
