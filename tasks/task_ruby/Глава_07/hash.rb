lines = []
File.open("votes.txt") do |file|
	lines = file.readlines
end

#cоздаем новый хеш
votes = Hash.new (0)

#votes = {}
lines.each do |line|
	name = line.chomp
	name.upcase!
	votes[name] += 1
end
votes.each do |name, count|
	puts "#{name}: #{count}"
end
	# избавляемся от команды if
#	if votes[name] != nil
#	if votes[name]
#		votes[name] += 1
#	else
#		votes[name] = 1
#	end

#p votes
#p lines
#votes = Hash.new (0)
#votes["Amber Graham"] = 1
#p votes["Amber Graham"]
#p votes["AMBER GRAHAM"]
#p votes["Brian Martin"]