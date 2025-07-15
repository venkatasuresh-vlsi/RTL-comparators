module comparator_5bit (
     input [4:0] a, b,
	 output reg eq, gt, lt
	 );
	 always @(*) begin
	     if (a == b) begin
		     eq = 1;
			 gt = 0;
			 lt = 0;
			end
		 else if (a > b) begin
		     eq = 0;
			 gt = 1;
			 lt = 0;
			end
		 else begin
		     eq = 0;
			 gt = 0;
			 lt = 1;
			end
		end
	endmodule