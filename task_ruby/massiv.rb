#prices = [2.99, 25.00, 9.99]
#prices[0]
#prices[1]
#prices[2]
#puts prices[0]
#puts prices[2]
#puts prices[1]


#prices = [7.99, 25.00, 3.99, 9.99]
#puts prices.class

#puts prices.first
#puts prices.last
#puts prices.length
#puts prices.include?(25.00)
#puts prices.find_index(9.99)

#prices.push(0.99)
#p prices

#prices.shift
#p prices


#prices << 5.99
#prices << 8.99
#p prices

#prices.pop
#p prices

#puts ["d", "o", "g"].join
#puts ["d", "o", "g"].join("-")

#p "d-o-g".chars

#p "d-o-g".split("-")
def total(prices)
	amount = 0
	index = 0
	while index < prices.length
		amount += prices[index]
		index += 1
	end
	amount
end

prices = [3.99, 25.00, 8.99]
puts format("%.2f", total(prices))


def refund(prices)
	amount = 0
	index = 0
	while index < prices.length
		amount -= prices[index]
		index += 1 
	end
	amount
end

puts format("%.2f", refund(prices))


def show_discounts(prices)
	index = 0
	while index < prices.length
		amount_off = prices[index] / 3.0
		puts format("Your discount: $%.2f", amount_off)
		index += 1
	end
end

show_discounts(prices)

# плохой вариант кода 
#def do_something_with_every_item(array, operation)
#	if operation == "total" or operation == "refund"
#		amount = 0
#	end
#	index = 0
#	while index < array.length
#		if operation == "total"
#			amount += array[index]
#		elsif operation == "refund"
#			amount -= array[index]
#		elsif operation == "show discounts"
#			amount_off = array[index] / 3.0
#			puts format("Your discount: $%.2f", amount_off)
#		end
#		index += 1
#	end
#	if operation == "total" or operation == "refund"
#	return amount
#	end
#end

def my_method(&my_block)
	puts "We're in the method, about to invoke your block!"
	my_block.call
	puts "We're back in the method"
end
my_method do
puts "We're in the block!"
end

my_method do
	puts "It's a block party!"
end

my_method do
	puts "Wooooo!"
end

def twice(&my_block)
	puts "In the method, about to call the block!"
	my_block.call
	puts "Back in the method, about to call the block again!"
	my_block.call
	puts "Back in the method, about to return!"
end
twice do
	puts "Wooo!"
end

