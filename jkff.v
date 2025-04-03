module jkff(
    input J, K, clock,
    output Q, 
    output NotQ
);

 wire dout;
 assign dout = (~K & Q) | (NotQ & J);
 
    dff dflop(
        .D(dout),
        .Clock(clock),
        .Q(Q),
        .NotQ(NotQ)
    );
    
  
    
/*    
    always @(*)
        begin
            case({J,K})
                2'b00: Q <= Q;
                2'b01: Q <= 0;
                2'b10: Q <= 1;
                2'b11: Q <= ~Q;
            endcase
         end
*/

endmodule