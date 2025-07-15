module tb_1bit;
     reg a, b;
	 wire eq, gt, lt;
	 integer i;
	 
	 comparator_1bit uut(
	     .a(a),
		 .b(b),
		 .eq(eq),
		 .gt(gt),
		 .lt(lt)
		 );
	 initial begin
	     $monitor("Time=%0t | a=%b | b=%b | eq=%b | gt=%b | lt=%b", $time, a, b, eq, gt, lt);
		     for (i=0; i<4; i=i+1) begin
			     {a, b} = i;
				 #10;
				end
			$finish;
		end
	endmodule
		 