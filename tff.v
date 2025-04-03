module tff(
input T, Clock,
output  Q, NotQ
);

jkff jkflop(
    .J(T),
    .K(T),
    .clock(Clock),
    .Q(Q),
    .NotQ(NotQ)
);


endmodule