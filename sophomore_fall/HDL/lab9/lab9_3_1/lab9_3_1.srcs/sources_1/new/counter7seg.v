`timescale 1ns / 1ps

module top(
    input   clk,
    input   rst,
    input   enable,
    output  [7:0]   an,
    output  dp,
    output  [6:0]   seg
    );

wire    clk_5m;
wire    rst_n;
reg     pulse_10hz;
reg     [7:0]   seg_sel;
reg     dot;
reg     [3:0]   seg_din;    
reg     [22:0]  cnt; 
reg     [3:0]   deci_cnt;
reg     [3:0]   sec_cnt;
reg     [3:0]   ten_cnt;
reg     [3:0]   min_cnt;
   
clk_wiz_0    clk_wiz_0(.clk_in1    (clk),.clk_out1   (clk_5m),.reset      (rst),.locked(rst_n));
seg_ctl ctrl( seg_din, dot, seg_sel, an, dp, seg);

always@(posedge clk_5m or negedge rst_n)
begin
    if(~rst_n)
        cnt <= 23'h0;   //清零
    else if(enable)begin
        if(cnt<23'd500000)
            cnt <= cnt + 1;
        else    
            cnt <= 23'h0;
    end
end
always@(posedge clk_5m or negedge rst_n)
begin
    if(~rst_n)
        pulse_10hz   <= 1'b0;
    else if(cnt==23'd499999)
        pulse_10hz   <= 1'b1;
    else
        pulse_10hz   <= 1'b0;
end

always@(posedge clk_5m or negedge rst_n)
begin
    if(~rst_n)
        deci_cnt    <= 4'h0;
    else if(pulse_10hz)
    begin
        if(deci_cnt>=4'h9)
            deci_cnt <= 4'h0;
        else
            deci_cnt <= deci_cnt + 4'h1;
    end
end

always@(posedge clk_5m or negedge rst_n)
begin
    if(~rst_n)
        sec_cnt    <= 4'h0;
    else if(pulse_10hz && deci_cnt==9)
    begin
        if(sec_cnt>=4'h9)
            sec_cnt <= 4'h0;
        else
            sec_cnt <= sec_cnt + 1'b1;
    end
end

always@(posedge clk_5m or negedge rst_n)
begin
    if(~rst_n)
        ten_cnt    <= 4'h0;
    else if(pulse_10hz && deci_cnt==9 && sec_cnt==9)
    begin
        if(ten_cnt>=4'h5)
            ten_cnt <= 4'h0;
        else
            ten_cnt <= ten_cnt + 1'b1;
    end
end

always@(posedge clk_5m or negedge rst_n)
begin
    if(~rst_n)
        min_cnt    <= 4'h0;
    else if(pulse_10hz && deci_cnt==9 && sec_cnt==9 && ten_cnt ==9)
    begin
        if(min_cnt>=4'h9)
            min_cnt <= 4'h0;
        else
            min_cnt <= min_cnt + 1'b1;
    end
end

    
always@(posedge clk_5m or negedge rst_n)
begin
    if(~rst_n)
    begin
        seg_sel <= 8'b0;
        seg_din <= 4'h0;
        dot     <= 1'b0;
    end
    else case(cnt[15:13])
        3'b000:
        begin
            seg_sel <= 8'b1111_1110;
            seg_din <= deci_cnt;
            dot     <= 1'b0;
        end
        3'b001:
        begin
            seg_sel <= 8'b1111_1101;
            seg_din <= sec_cnt;
            dot     <= 1'b1;
        end
        3'b010:
        begin
            seg_sel <= 8'b1111_1011;
            seg_din <= ten_cnt;
            dot     <= 1'b0;
        end        
        3'b011:
        begin
            seg_sel <= 8'b1111_0111;
            seg_din <= min_cnt;
            dot     <= 1'b1;
        end        
        3'b100:
        begin
            seg_sel <= 8'b1111_1111;
            seg_din <= 4'h0;
            dot     <= 1'b0;
        end        
        3'b101:
        begin
            seg_sel <= 8'b1111_1111;
            seg_din <= 4'h0;
            dot     <= 1'b0;
        end        
        3'b110:
        begin
            seg_sel <= 8'b1111_1111;
            seg_din <= 4'h0;
            dot     <= 1'b0;
        end        
        3'b111:  
        begin
            seg_sel <= 8'b1111_1111;
            seg_din <= 4'h0;
            dot     <= 1'b0;
        end        
        endcase      
end

    
endmodule