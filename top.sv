module top(clkin_data, in_data, out_data);
    bit [29:0] _0_;
    bit [29:0] _1_;
    bit [5:0] _2_;
    bit [4:0] _3_;
    bit [14:0] _4_;
    bit [5:0] celloutsig_0z;
    bit [14:0] celloutsig_1z;
    bit [4:0] celloutsig_2z;
    bit [29:0] celloutsig_3z;
    input [191:0] clkin_data;
    bit [191:0] clkin_data;
    input [95:0] in_data;
    bit [95:0] in_data;
    output [95:0] out_data;
    bit [95:0] out_data;
    assign celloutsig_3z = { celloutsig_2z[4:1], _1_[25:0] } ^ { celloutsig_1z[13:0], _0_[15:0] };

    logic async_signal_0;
    logic async_signal_1;
    logic async_signal_2;
    logic async_signal_3;
    logic async_signal_4;
    logic async_signal_5;
    logic [4:0] async_signal_6;
    logic [1:0] async_signal_7;
    logic [1:0] async_signal_8;
    assign async_signal_0 = clkin_data[0];
    assign async_signal_1 = clkin_data[96];
    assign async_signal_2 = clkin_data[96];
    assign async_signal_3 = clkin_data[64];
    assign async_signal_4 = clkin_data[32];
    assign async_signal_5 = clkin_data[64];
    assign async_signal_6 = celloutsig_0z[5:1];
    assign async_signal_7 = _4_[9:8];
    assign async_signal_8 = _4_[1:0];

    always_ff @ ( negedge async_signal_0 , negedge async_signal_1 )
    if (!async_signal_2) celloutsig_0z <= 6'h3b;
    else if (async_signal_3) celloutsig_0z <= _2_;

    always_ff @ ( negedge async_signal_4 )
        celloutsig_2z <= _3_;

    always_latch
    if (async_signal_5) celloutsig_1z = { async_signal_6, async_signal_7, celloutsig_0z, async_signal_8 };
    assign _0_[29:16] = celloutsig_1z[13:0];
    assign _1_[29:26] = celloutsig_2z[4:1];
    assign { _4_[14:10], _4_[7:2] } = { celloutsig_0z[5:1], celloutsig_0z };
    assign out_data[61:32] = celloutsig_3z;
endmodule
