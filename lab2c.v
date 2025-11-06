module lab2c (cin, a, b, d2, d1, d0);
    input cin;
    input [7:0] a, b;
    output [6:0] d2, d1, d0;

    wire [8:0] sum;
    wire [3:0] hundreds, tens, units;

    adder8bit adder (.a(a), .b(b), .cin(cin), .sum(sum));
    digitextractor extractor (.sum(sum), .hundreds(hundreds), .tens(tens), .units(units));
    seven_segment_decoder seg0 (.in(units), .seg(d0));
    seven_segment_decoder seg1 (.in(tens), .seg(d1));
    seven_segment_decoder seg2 (.in(hundreds), .seg(d2));

endmodule
