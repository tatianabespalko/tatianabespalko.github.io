FIELDS = [:url, :title, :year, :country, :release, :genres, :time, :rating, :director, :starring]
puts "Hello. Enter file name"
begin
  file_name = gets.chomp
  lines = File.read(file_name).split("\n")
  rescue Exception
  puts "File not found: #{file_name}"
  exit
end

movies = lines.map {|v| FIELDS.zip(v.split("|")).to_h}

filter = movies.select {|value| value[:title].include? "Time"}

filter.each do |value|
  rating = ((value[:rating].to_f.ceil - value[:rating].to_f)*10).to_i
  puts "#{value[:title]} #{"".ljust(rating, "*")}"
end

puts "*" * 20

the_longest_movies = movies.sort_by {|value| value[:time].to_f}.reverse!.first(5)
the_longest_movies.each { |value| puts "#{value[:title]} #{value[:time]}"}

puts "*" * 20

comedy = movies.select {|value| value[:genres].include? "Comedy"}.sort_by{|value| value[:release]}
comedy.each {|value| puts "#{value[:title]} released #{value[:release]}"}

puts "*" * 20

directors = movies.sort_by{|v| v[:director].split(" ").last}.uniq {|v| v[:director]}
directors.each {|v| puts v[:director]}

puts "*" * 20

movies_not_usa = movies.count {|v| v[:country] != "USA"}
p movies_not_usa

puts "*" * 20

group_by_directors = movies.group_by{|val| val[:director]}
group_by_directors.each do |k, v|
  puts "#{k} made #{v.count} movies"
end

puts "*" * 20

actor = movies.map {|v| v[:starring].split(",")}.flatten
count_actor = actor.reduce({}) do |hash, k| 
    hash[k] = actor.count(k)
    hash
end
count_actor.each {|k, v| puts "#{k} starred in #{v} movies"}


=begin
1. method chaining это написание кода в одну строчку, использование разных методов последовательно в цепочке.
2. map и map! применяют переданный блок к каждому элементу массива и возвращают новый массив,
  который содержит значения возвращаемые блоком.
  reject и reject! возвращают новый массив со значениями для которых выполняется условие переданное в блоке.
  map, reject используют без method chaining, а map!, reject! используют внутри цепочки method chaining
=end




input = ARGV.first # make string input (ARGV an array)

input || input = "movies.txt" # in case of empty filename default file loads

File.exist?(input) || abort("\n\nTHERE IS NO FILE NAMED: #{input}, PLEASE, ENTER VALID FILENAME.\nIF NO VALID FILENAME WILL BE ENTERED, PROGRAM WILL BE STARTED\n  WITH DEFAULT FILE: movies.txt\n\n")

# array with names of FIELDS
FIELDS = %i[ link name year country release_date genre length rating director actors ]
# splitted array of movies, IO.foreach reads file line-by-line processing by block
array_of_hashes = IO.foreach(input).map { |x| FIELDS.zip(x.chomp.to_s.split("|")).to_h}

def star_rating (rating) # convert float rating into stars
  "*"*(((rating - 8)*10)+1)
end

def nice_output (arr)
  arr.each { |x| puts "#{x[:name]} (#{x[:release_date]}; #{x[:genre]}) - #{x[:length]} "}
end

# 5 longest movies don't need to converted  to integer for sorting
arr_five_longest = array_of_hashes.max_by(5) {|key| key[:length].to_i}

# most resent 10 comedies, sort by date (don't need to convert date into integers)
arr_ten_comedies = array_of_hashes.find_all {|key| key[:genre].include?("Comedy")}.max_by(10) {|x| x[:release_date]}

# make an array of directors sorted by last word (family name)
directors = array_of_hashes.map { |x| x[:director]}.uniq.sort_by { |x| x.split.last }

# return number of non-USA movies
number_of_nonusa = array_of_hashes.reject { |x| x[:country].include? ("USA")}.count

# Output results
puts "\n\n5 longest movies:\n#{"*"*70}"
nice_output(arr_five_longest)
puts "\n\n10 most recent comedies\n#{"*"*70}"
nice_output(arr_ten_comedies)
puts "\n\nNumber of non-USA movies: #{number_of_nonusa}\n\n"
puts "\n\nList of Directors in alphabetical order\n#{"*"*70}"
directors.each { |x| print "#{x}; "}
puts "\n\n"