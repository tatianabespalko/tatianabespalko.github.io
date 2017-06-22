class ListWithCommas
	attr_accessor :items
	def join
		last_item = "and #{items.last}"
		other_items = items.slice(0, items.length - 1).join(', ')
		"#{other_items}, #{last_item}"
	end
end

p ['a', 'b', 'c', 'd', 'e'].slice(1, 3)

array = ['a', 'b', 'c', 'd', 'e']
p array.slice(0, array.length - 1)

two_subjects = ListWithCommas.new
two_subjects.items = ['my parents', 'a rodeo clown']
puts "A photo of #{two_subjects.join}"
three_subjects = ListWithCommas.new
three_subjects.items = ['my parents', 'a rodeo clown', 'a prize bull']
puts "A photo of #{three_subjects.join}"

three_subjects = ListWithCommas.new
three_subjects.items = ['my parents', 'a rodeo clown', 'a prize bull']
puts "A photo of #{three_subjects.join}"

two_subjects = ListWithCommas.new
two_subjects.items = ['my parents', 'a rodeo clown']
puts "A photo of #{two_subjects.join}"