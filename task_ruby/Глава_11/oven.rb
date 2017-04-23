class OvenOffError < StandardError
	end
	class OvenEmptyError < StandardError
	end

class SmallOven
	attr_accessor :contents
	def turn_on
		puts "Turning oven on."
		@state = "on"
	end
	def turn_off
		puts "Turning oven off."
		@state = "off"	
	end
	def bake
		unless @state == "on"
			raise OvenOffError, "You need to turn the oven on first!"			
		end		
		if @contents == nil
			raise OvenEmptyError, "There's nothing in the oven!"
		end
		"golden-brown #{contents}"
	end
end


dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_off
dinner.each do |item|
	begin
		oven.turn_on
		#oven.contents = item
        oven.contents = 'turkey'
		puts "Serving #{oven.bake}."
		#oven.turn_off
	rescue OvenEmptyError => error
		puts "Error: #{error.message}"
	rescue OvenOffError => error
		oven.turn_on
		ensure
			oven.turn_off
	end
end
	
#oven.contents = nil
	
