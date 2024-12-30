module addsub(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    logic [15:0] out_low, out_high;
    logic carry;

    logic [31:0] bin;

    assign bin = sub ? ~b+1 : b;

    add16 low ( .a(a[15:0]), .b(bin[15:0]), .cin(0), .sum(out_low), .cout(carry));
    add16 high ( .a(a[31:16]), .b(bin[31:16]), .cin(carry), .sum(out_high), .cout());
    
    assign sum = {out_high, out_low};
endmodule

module addsub_testbench ();
    logic [31:0] a;
    logic [31:0] b;
    logic sub;
    logic [31:0] sum;

    addsub dut (.*);

    initial begin
       a = 32'd0;   b = 32'd0;  sub = 0;    #10;
       a = 32'd0;   b = 32'd1;  sub = 0;    #10;
       a = 32'd0;   b = 32'd2;  sub = 0;    #10;
       a = 32'd1;   b = 32'd1;  sub = 0;    #10;
       a = 32'd2;   b = 32'd2;  sub = 1;    #10;
    //    a = 32'd0;   b = 32'd0;  sub = 0;    #10;
    //    a = 32'd0;   b = 32'd0;  sub = 0;    #10;
    //    a = 32'd0;   b = 32'd0;  sub = 0;    #10;
    //    a = 32'd0;   b = 32'd0;  sub = 0;    #10;
    //    a = 32'd0;   b = 32'd0;  sub = 0;    #10;
    end
endmodule