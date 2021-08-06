module Fourbit_SIPO_shiftReg(clk,rst, data_in, data_out);

	input clk,rst;
	
	input data_in;
	
	output [3:0] data_out;
	
	wire[3:0] data_out;
	
	reg [3:0] shiftRegBank;

	always @(posedge clk,posedge rst)

		begin

			if (rst == 1'b1)

			shiftRegBank <= 4'b0000;

		else

		begin

			shiftRegBank[0] <= data_in;
			
			shiftRegBank[1] <= shiftRegBank[0];
			
			shiftRegBank[2] <= shiftRegBank[1];
			
			shiftRegBank[3] <= shiftRegBank[2];

		end

	end

	assign data_out = shiftRegBank;

endmodule


module Fourbit_SIPO_shiftReg_testbench;

reg clk,rst;

reg data_in;

wire [3:0] data_out;

Fourbit_SIPO_shiftReg shift(clk,rst,data_in,data_out);

initial begin

	clk = 0;

end


initial begin
	rst = 1; #15;
	
	rst = 0; data_in = 1'b1; #40
	
	data_in=1'b0; #20 
	
	data_in=1'b1;	#20

	data_in=1'b0;	#40
	
	data_in=1'b0;	#10

	data_in=1'b1;


end

always 
begin
#5 clk = ~clk;
end

initial #350 ;

endmodule