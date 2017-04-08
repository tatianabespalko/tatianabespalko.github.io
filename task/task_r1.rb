class Array
	def sum
		inject { |sum, x| sum + x }
	end
end

[1, 2, 3, 4].sum

module Enumerable
	def sum
		inject(0) {|n, i|  n + i }
	end
end

[1,3,5,7,9].sum
(1..100).sum

