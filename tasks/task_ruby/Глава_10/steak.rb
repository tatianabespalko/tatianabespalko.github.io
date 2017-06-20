class Steak

	include Comparable

	GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}
	attr_accessor :grade
	def <=> (other)
		#1)GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
		if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
			return -1
		elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
			return 0
		else
			return 1
		end
	end
end

#1)  first_steak = Steak.new
#first_steak.grade = "Prime"
#second_steak = Steak.new
#second_steak.grade = "Choice"

prime = Steak.new
prime.grade = "Prime"
choice = Steak.new
choice.grade = "Choice"
select = Steak.new
select.grade = "Select"
#if first_steak > second_steak
	#puts "I'll take #{first_steak.inspect}."
#end

# 1) puts first_steak <=> second_steak
#puts second_steak <=> first_steak

puts "prime > choice: #{prime > choice}"
puts "prime < select: #{prime < select}"
puts "select == select: #{select == select}"
puts "select <= select: #{select <= select}"
puts "select >= choice: #{select >= choice}"
print "choice.between?(select, prime): "
puts choice.between?(select, prime)