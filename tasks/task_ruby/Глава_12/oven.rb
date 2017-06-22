# 2
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
			#2
			raise OvenOffError, "You need to turn the oven on first!"
			#1) return "You need to turn the oven on first!"
		end
		if @contents == nil
			raise OvenEmptyError, "There's nothing in the oven!"
			#1) return "There's nothing in the oven!"
		end
		"golden-brown #{contents}"
	end
end

#dinner = ['turkey', 'casserole', 'pie']
dinner = ['turkey', nil, 'pie']
oven = SmallOven.new
oven.turn_off
  dinner.each do |item|
  	begin
  		#oven.contents = item
  		#oven.contents = 'turkey'
  		oven.contents = nil
  		puts "Serving #{oven.bake}."
  		#rescue => error
  	rescue OvenEmptyError => error
  		puts "Error: #{error.message}"
	rescue OvenOffError => error
		oven.turn_on
		retry
	ensure
		oven.turn_off
	end
end
	# 2) oven.turn_off - духовка выключена
	#oven.contents = 'turkey'
	#puts "Serving #{oven.bake}."

	#oven = SmallOven.new
	#oven.turn_on
	#oven.contents = nil
	#puts "Serving #{oven.bake}."
