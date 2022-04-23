module voter_if (I, O);
input [3:0] I; // I 4 men
output [3:1] O; // O Result
reg [3:1] O;

always@ (I)
begin
    if (I == 4'b0000)
        O[3] = 1;
    else if (I == 4'b0001)
        O[3] = 1;
    else if (I == 4'b0010)
        O[3] = 1;
    else if (I == 4'b0100)
        O[3] = 1;
    else if (I == 4'b1000)
        O[3] = 1;
    else
        O[3] = 0;
    if (I == 4'b0011)
        O[2] = 1;
    else if (I == 4'b0101)
        O[2] = 1;
    else if (I == 4'b0110)
        O[2] = 1;
    else if (I == 4'b1001)
        O[2] = 1;
    else if (I == 4'b1010)
        O[2] = 1;
    else if (I == 4'b1100)
        O[2] = 1;
    else
        O[2] = 0;

    if (I == 4'b1110 || I == 4'b1101 || I ==
            4'b1011 || I == 4'b0111 || I == 4'b1111)
        O[1] = 1;
    else
        O[1] = 0;

end
endmodule
