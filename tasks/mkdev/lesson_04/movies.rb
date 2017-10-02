# 1. Что такое require?
#Для загрузки дополнительного кода Ruby используется метод "require".

# 2. Как передаются опции при разборе CSV, в виде какого типа данных?
#Программы для работы с электронными таблицами обычно могут экспортировать данные в формате CSV
#(сокращение от «Comma-Separated Values») — простом текстовом формате, в котором значения разбиваются по
#строкам и столбцам и отделяются друг от друга запятыми.

require 'csv'
require 'ostruct'
require 'date'

input = ARGV.first 
input || input = "movies.txt" 

# array
FIELDS = %i[ link name year country release_date genre length rating director actors ]

# splitted array of movies, IO.foreach reads file line-by-line processing by block
#array_of_hashes = IO.foreach(input).map { |x| FIELDS.zip(x.chomp.to_s.split("|")).to_h}

array_of_ostructs = CSV.foreach(input, col_sep: "|", headers: FIELDS).map { |x| OpenStruct.new(x.to_h)}


def star_rating (rating) # convert float rating into stars
  "*"*(((rating - 8)*10)+1)
end

def nice_output (arr)
  #arr.each { |x| puts "#{x[:name]} (#{x[:release_date]}; #{x[:genre]}) - #{x[:length]} "}
    arr.each { |field| puts "#{field.name} (#{field.release_date}; #{field.genre}) - #{field.length} "}
end

#CSV.open('movies.txt', 'r') do |row|

# 5 самых длинных фильмов
arr_five_longest = array_of_ostructs.max_by(5) {|field| field.length.to_i}

# 10 комедий (первые по дате выхода)
arr_ten_comedies = array_of_ostructs.find_all {|field| field.genre.include?("Comedy")}.max_by(10) {|field| field.release_date}

# список всех режиссёров по алфавиту (без повторов!) — кстати, стоит отсортировать их по фамилии (будем считать таковой последнее слово ФИО);
directors = array_of_ostructs.map { |field| field.director}.uniq.sort_by { |field| field.split.last }

# количество фильмов, снятых не в США.
number_of_nonusa = array_of_ostructs.reject { |field| field.country.include? ("USA")}.count

# Вывести статистику по месяцам — в каком сколько фильмов снято (вне зависимости от года), использовать библиотеку date
array_dates = array_of_ostructs.reject { |field| field.release_date.to_s[5..6] == nil }.map { |field| Date.strptime(field.release_date, "%Y-%m").strftime("%B") }.group_by { |x| x }

# Вывести результат
puts format("\n\n%30s |  %s", "MONTH:", "Number of movies:")
array_dates.each { |k,v| puts format("%30s |  %s", "#{k}", "#{v.count}")  }
puts "\n\n5 longest movies:\n#{"*"*70}"
nice_output(arr_five_longest)
puts "\n\n10 most recent comedies\n#{"*"*70}"
nice_output(arr_ten_comedies)
puts "\n\nList of Directors in alphabetical order\n#{"*"*70}"
directors.each { |x| print "#{x}; "}
puts "\n\nNumber of non-USA movies: #{number_of_nonusa}\n\n"
puts "\n\n"
