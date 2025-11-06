module digitextractor (sum, hundreds, tens, units);
    input [8:0] sum;
    output reg [3:0] hundreds, tens, units;

    integer total;

    always @(*) begin
	 integer total;
        total = sum;
        hundreds = total / 100;
        tens     = (total % 100) / 10;
        units    = total % 10;
    end
endmodule