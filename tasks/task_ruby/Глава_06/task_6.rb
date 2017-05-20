#old code
#review_file = File.open("reviews.txt")
#puts review_file.class
#lines = review_file.readlines
#puts "Line 4: #{lines[3]}"
#puts "Line 1: #{lines[0]}"
#review_file.close
#puts lines.length

#new code 1
lines = []
File.open("reviews.txt") do |review_file|
	lines = review_file.readlines
end

# old code changing for one line - relevant_lines = []
#lines.each do |line|
#	if line.include?("Truncated")
#		relevant_lines << line
#	end
#end
relevant_lines = lines.find_all { |line| line.include?("Truncated") }
reviews = relevant_lines.reject { |line| line.include?("--") }
#p relevant_lines
def find_adjective(string)
	words = string.split(" ")
	index = words.find_index("is")
	words[index + 1]
end


#adjectives = []
#adjective = find_adjective(reviews.first)
#reviews.each do |review|
#	adjectives << find_adjective(review)
#end

#def map
#	results = []
#	self.each do |item|
#		results << yield(item)
#	end
#results

#end
#adjectives = reviews.map { |review| find_adjective(review) }
adjectives = reviews.map do |review|
	adjective = find_adjective(review)
	"'#{adjective.capitalize}'"
end
#p reviews
#puts adjectives
puts "The critics agree, Truncated is:"
puts adjectives

#puts lines.length
#puts relevant_lines