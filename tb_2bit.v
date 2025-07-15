module tb_2bit;
     reg [1:0] a, b;
	 wire eq, gt, lt;
	 integer i, j;
	 
	 comparator_2bit uut(
	     .a(a),
		 .b(b),
		 .eq(eq),
		 .gt(gt),
		 .lt(lt)
		 );
	 initial begin
	     $monitor("Time=%0t | a=%b | b=%b | eq=%b | gt=%b | lt=%b", $time, a, b, eq, gt, lt);
		     for (i=0; i<4; i=i+1) begin
			     for (j=0; j<4; j=j+1) begin
				     a = i; b = j;
				     #10;
					end
				end
			$finish;
		end
	endmodule
		 