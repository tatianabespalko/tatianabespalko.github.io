class CelestialBody
	attr_accessor :type, :name
end

#default_body = CelestialBody.new
#default_body.type = 'planet'
#bodies = Hash.new(default_body)

# 3)
bodies = Hash.new do |hash, key|
	body  = CelestialBody.new
	body.type = "planet"
	hash[key] = body
	body
end

# 1)
#altair = CelestialBody.new
#altair.name = 'Altair'
#altair.type = 'star'
#polaris = CelestialBody.new
#polaris.name = 'Polaris'
#polaris.type = 'star'
#vega = CelestialBody.new
#vega.name = 'Vega'
#vega.type = 'star'

#polaris = altair
#polaris.name = 'Polaris'
#vega = polaris
#vega.name = 'Vega'

#puts altair.name, polaris.name, vega.name
#puts altair.object_id
#puts vega.object_id
#puts polaris.object_id
#puts vega.inspect

# 2)
#p bodies.default
#bodies['Mars'].name = 'Mars'
#bodies['Mars'].type = 'planet' 
#p bodies['Mars']
#p bodies.default

#p bodies['Mars']
#p bodies.default

#bodies['Europa'].name = 'Europa'
#bodies['Europa'].type = 'moon'
#p bodies['Europa']


#bodies['Venus'].name = 'Venus'
#p bodies['Venus']

#p bodies['Mars']
#p bodies['Europa']

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'
bodies['Venus'].name = 'Venus'
p bodies['Mars']
p bodies['Europa']
bodies['Europa'].type = 'moon'
p bodies['Venus']


p my_hash = {}
p my_array = []
p my_integer = 20
p my_hash['A'] = ['Apple']
p my_array[0] = 245

greetings = Hash.new do |hash, key|
	hash[key] = "Hi, #{key}"
end

p greetings["Kayla"]
p greetings




