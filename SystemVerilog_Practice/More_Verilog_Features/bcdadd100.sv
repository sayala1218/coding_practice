module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    logic [99:0] couts;


    bcd_fadd bcd0 ( .a(a[3:0]), 
                    .b(b[3:0]), 
                    .cin(cin), 
                    .cout(couts[0]), 
                    .sum (sum[3:0])   );

    genvar i;
    generate
        for(i = 4; i < 400; i+=4) begin : gen_bcd
            bcd_fadd add_gen (  .a(a[i+3:i]), 
                                .b(b[i+3:i]), 
                                .cin(couts[i/4-1]), 
                                .cout(couts[i/4]), 
                                .sum (sum[i+3:i])   );
        end
    endgenerate

    assign cout = couts[99];
endmodule