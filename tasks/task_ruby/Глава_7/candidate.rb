class Candidate
	attr_accessor :name, :age, :occupation, :hobby, :birthplace
	#def initialize(name, age, occupation, hobby = nil, birthplace)
	def initialize(name, age: nil, occupation: nil, hobby: nil, birthplace: "Sleepy Creek")
	#def initialize(name, options ={})
		self.name = name
		#self.age = options [:age]
		self.age = age
		#self.occupation = options [:occupation]
		self.occupation = occupation
		#self.hobby = options [:hobby]
		self.hobby = hobby
		#self.birthplace = options [:birthplace]
		self.birthplace = birthplace
	end
end

def print_summary(candidate)
	puts "Candidate: #{candidate.name}"
	puts "Age: #{candidate.age}"
	puts "Occupation: #{candidate.occupation}"
	puts "Hobby: #{candidate.hobby}"
	puts "Birthplace: #{candidate.birthplace}"
end

#candidate = Candidate.new("Carl Barnes", 49, "Attorney", "Miami")
#candidate = Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer", hobby: "Lacrosse", birthplace: "Seattle")
#candidate = Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer")
#print_summary(candidate)

p Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer")
p Candidate.new("Carl Barnes")
