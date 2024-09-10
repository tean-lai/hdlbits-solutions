module add1 ( input a, input b, input cin, output sum, output cout );
  wire a_xor_b = a ^ b;
  assign sum = a_xor_b ^ cin;
  assign cout = (a & b) | (a_xor_b & cin);
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    add1 ins[99:0] ( 
        a[99:0], 
        b[99:0], 
        {cout[98:0], cin}, 
        sum[99:0], 
        cout[99:0] 
    );

endmodule
