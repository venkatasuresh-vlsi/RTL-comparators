module tb_3bit;
     reg [2:0] a, b;
	 wire eq, gt, lt;
	 integer i, j;
	 
	 comparator_3bit uut(
	     .a(a),
		 .b(b),
		 .eq(eq),
		 .gt(gt),
		 .lt(lt)
		 );
	 initial begin
	     $monitor("Time=%0t | a=%b | b=%b | eq=%b | gt=%b | lt=%b", $time, a, b, eq, gt, lt);
		     for (i=0; i<8; i=i+1) begin
			     for (j=0; j<8; j=j+1) begin
				     a = i; b = j;
				     #10;
					end
				end
			$finish;
		end
	endmodule
		 