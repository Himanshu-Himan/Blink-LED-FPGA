// create module
module blink(clk, LED, LED1, LED2, LED3, LED4, LED5, LED6, LED7);
input clk;     // input clock 50MHz
output reg LED;
output reg LED1;
output reg LED2;
output reg LED3;
output reg LED4;
output reg LED5;
output reg LED6;
output reg LED7;

// create a binary counter
reg [31:0] cnt; //32 bit counter
reg [31:0] cnt1; //32 bit counter
reg [31:0] cnt2; //32 bit counter
reg [31:0] cnt3; //32 bit counter
reg [31:0] cnt4; //32 bit counter
reg [31:0] cnt5; //32 bit counter
reg [31:0] cnt6; //32 bit counter
reg [31:0] cnt7; //32 bit counter
always @(posedge clk) 
begin 
if(cnt <= 30000000) // Use the 25th bit of the counter to blink the LED at a few Hz
begin
cnt <= cnt+1; // count up
end
else
begin
cnt <=0;
LED <= !LED;
end
end
always @(posedge clk) 
begin 
if(cnt1 <= 20000000)
begin
cnt1 <= cnt1 +1;
end
else
begin
cnt1 <=0;
LED1 <= !LED1;
end
end
always @(posedge clk) 
begin 
if(cnt <= 1000000) // Use the 25th bit of the counter to blink the LED at a few Hz
begin
cnt2 <= cnt2+1; // count up
end
else
begin
cnt2 <=0;
LED2 <= !LED2;
end
end
always @(posedge clk) 
begin 
if(cnt3 <= 250000) // Use the 25th bit of the counter to blink the LED at a few Hz
begin
cnt3 <= cnt3 + 1; // count up
end
else
begin
cnt3 <=0;
LED3 <= !LED3;
end
end
always @(posedge clk) 
begin 
if(cnt4 <= 30000000) // Use the 25th bit of the counter to blink the LED at a few Hz
begin
cnt4 <= cnt4 + 1; // count up
end
else
begin
cnt4 <=0;
LED4 <= !LED4;
end
end
always @(posedge clk) 
begin 
if(cnt5 <= 20000000) // Use the 25th bit of the counter to blink the LED at a few Hz
begin
cnt5 <= cnt5 + 1; // count up
end
else
begin
cnt5 <=0;
LED5 <= !LED5;
end
end
always @(posedge clk) 
begin 
if(cnt7 <= 250000) // Use the 25th bit of the counter to blink the LED at a few Hz
begin
cnt7 <= cnt7 + 1; // count up
end
else
begin
cnt7 <=0;
LED7 <= !LED7;
end
end
endmodule