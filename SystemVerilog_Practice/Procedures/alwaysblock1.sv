module alwaysblock1(
    input a, 
    input b,
    output out_assign,
    output out_alwaysblock
);

    assign out_assign = a & b;

    always_comb begin
        out_alwaysblock = a & b;
    end

endmodule

// synthesis verilog_input_version verilog_2001
module alwaysblock1_verilog_2001(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    assign out_assign = a & b;

    always @(*) begin
        out_alwaysblock = a & b;
    end
endmodule