module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );

    wire [98:0] couts;

    bcd_fadd ins[99:0] (
        a[399:0],
        b[399:0],
        {couts, cin},
        {cout, couts},
        sum[399:0]
    );

endmodule
