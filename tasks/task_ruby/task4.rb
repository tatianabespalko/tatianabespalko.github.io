require 'csv'
require 'date'
require 'ostruct'

FIELDS = [:url, :title, :year, :country, :release, :genres, :time, :rating, :director, :starring]

puts "Hello. Enter file name"
begin
  file_name = gets.chomp
  rescue Exception
  puts "File not found: #{file_name}"
  exit
end

movies =[]
movies_table = CSV.read(file_name, col_sep: '|', headers: FIELDS).each do |line|
  movies << OpenStruct.new(line.to_h)
end

arr1 = movies_table.delete_if{|s| s[:release].size < 7}.group_by {|v| Date.strptime(v[:release], '%Y-%m').mon }.sort_by{|v| v}
arr1.each{|k, v| puts "In #{Date::MONTHNAMES[k]} released #{v.count} movies" }

puts "*" * 20

filter = movies.select {|value| value.title.include? "Time"}

filter.each do |value|
  rating = ((value.rating.to_f.ceil - value.rating.to_f)*10).to_i
  puts "#{value.title} #{"".ljust(rating, "*")}"
end

puts "*" * 20

the_longest_movies = movies.sort_by {|value| value.time.to_f}.reverse!.first(5)
the_longest_movies.each { |value| puts "#{value.title} #{value.time}"}

puts "*" * 20

comedy = movies.select {|value| value.genres.include? "Comedy"}.sort_by(&:release)
comedy.each {|value| puts "#{value.title} released #{value.release}"}

puts "*" * 20

directors = movies.sort_by{|v| v.director.split(" ").last}.uniq(&:director)
directors.each {|v| puts v.director}

puts "*" * 20

movies_not_usa = movies.count {|v| v.country != "USA"}
p movies_not_usa

puts "*" * 20

group_by_directors = movies.group_by(&:director)
group_by_directors.each do |k, v|
  puts "#{k} made #{v.count} movies"
end

puts "*" * 20

actor = movies.map {|v| v.starring.split(",")}.flatten
count_actor = actor.reduce({}) do |hash, k| 
    hash[k] = actor.count(k)
    hash
end
count_actor.each {|k, v| puts "#{k} starred in #{v} movies"}

=begin
1. require методб который используется для подключения файлов/библиотек.
2. Опции передаются в виде Hash.
=end