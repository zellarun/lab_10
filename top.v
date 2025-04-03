module top(
    input [3:0] sw, 
    input btnC,
    output  [5:0]led
);
    
      dff dflop(
        .D(sw[0]),
        .Clock(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );
    
    jkff jkflop(
        .J(sw[1]),
        .K(sw[2]),
        .clock(btnC),
        .Q(led[2]),
        .NotQ(led[3])
    );

    tff tflop(
        .T(sw[3]),
        .Clock(btnC),
        .Q(led[4]),
        .NotQ(led[5])
     );

endmodule
