module Enumerable
	def find_all
		matching_items = []
		self.each do |item|
			if yield(item)
				matching_items << item
			end
		end
		matching_items
	end

	def reject
		kept_items = []
		self.each do |item|
			unless yield(item)
				kept_items << item
			end
		end
		kept_items
	end

	def map
		result = []
		self.each do |item|
			results << yield(item)
		end
		results
	end
end