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
        $monitor(a);
        $monitor(b);
        for(int i = 0; i < 16; i++) begin
            a = i;
            for(int j = 0; j < 16; j++) begin
                b = j;
            end
        end
    end
endmodule