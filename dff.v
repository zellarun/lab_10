module dff(
    input D, Clock,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock)
        begin
            Q <= D;
         end

    assign NotQ = ~Q;
endmodule
