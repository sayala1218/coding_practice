module cseladd(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	
    logic carry_sel;
    logic [15:0] sum_low, sum_high0, sum_high1, sum_high;
    
    add16 low ( .a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum_low), .cout(carry_sel));
    add16 high0 ( .a(a[31:16]), .b(b[31:16]), .cin(0), .sum(sum_high0), .cout() );
    add16 high1 ( .a(a[31:16]), .b(b[31:16]), .cin(1), .sum(sum_high1), .cout() );
    
    assign sum_high = carry_sel ? sum_high1: sum_high0;
    
    assign sum = {sum_high, sum_low};
    
endmodule