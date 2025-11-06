module adder8bit (a, b, cin, sum);
    input [7:0] a, b;
    input cin;
    output [8:0] sum;

    assign sum = a + b + cin;
endmodule