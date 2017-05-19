#def twice(&my_block)
#	puts "In the method, about to call the block!"
#	my_block.call #вызывается блок.
#	puts "Back in the method, about to call the block again!"
#	my_block.call #СНОВА вызывается блок. 
#	puts "Back in the method, about to return!"
#end
#twice do
#	puts "Woooo!"
#end

#def give(&my_block)
#	my_block.call("2 turtle doves", "1 partridge")
#end
def give
	yield "2 turtle doves", "1 partridge"
end

give do |present1, present2|
	puts "My method gave to me..."
	puts present1, present2
end