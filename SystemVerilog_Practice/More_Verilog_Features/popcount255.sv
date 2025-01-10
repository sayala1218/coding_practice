module popcount255( 
    input [254:0] in,
    output [7:0] out );

    always_comb begin
        out = 8'b0; // initializes to 0
        for(int i = 0; i < $bits(in); i++)
            if(in[i]) begin
                out += 8'b1; // adds one for every 1 found in 255 len vector "in"
            end
    end

endmodule