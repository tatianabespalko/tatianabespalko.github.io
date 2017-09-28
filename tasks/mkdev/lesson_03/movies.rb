# 1. Что такое блок кода, и как он нам помогает обрабатывать сложные массивы?
# Блок кода, — часть кода, которая сгруппирована и воспринимается как единое целое. 
#Блоки могут состоят из одного или нескольких операторов, а также могут быть пустыми.
#Блок — это произвольный код, который можно передать любому методу в качестве неявного
#последнего аргумента.
# - методу можно передать только один блок;
# - он всегда идет в самом конце и вынесен за скобки с аргументами (если они есть);
# - его можно задать при вызове любого метода, независимо от того, указаны в определении метода аргументы или нет.

# 2. Что такое method chaining, как он работает и зачем нужен? Цепочки методов (method chaining) -
#Можно сцепить несколько методов в единое выражение, если предыдущий вызываемый метод возвращает
#ActiveRecord::Relation, такие как all, where и joins.
#Методы, которые возвращают одиночный объект должны вызываться в конце.
#Улучшает читабельность кода, но сокращает код при работе с классом или образцом класса.
# method chaining это написание кода в одну строчку, использование разных методов последовательно в цепочке.
# https://www.sitepoint.com/a-guide-to-method-chaining/

input = ARGV.first 

input || input = "movies.txt" 


# array
FIELDS = %i[ link name year country release_date genre length rating director actors ]

# splitted array of movies, IO.foreach reads file line-by-line processing by block
array_of_hashes = IO.foreach(input).map { |x| FIELDS.zip(x.chomp.to_s.split("|")).to_h}

def star_rating (rating) # convert float rating into stars
  "*"*(((rating - 8)*10)+1)
end

def nice_output (arr)
  arr.each { |x| puts "#{x[:name]} (#{x[:release_date]}; #{x[:genre]}) - #{x[:length]} "}
end

# 5 самых длинных фильмов
arr_five_longest = array_of_hashes.max_by(5) {|key| key[:length].to_i}

# 10 комедий (первые по дате выхода)
arr_ten_comedies = array_of_hashes.find_all {|key| key[:genre].include?("Comedy")}.max_by(10) {|x| x[:release_date]}

# список всех режиссёров по алфавиту (без повторов!) — кстати, стоит отсортировать их по фамилии (будем считать таковой последнее слово ФИО);
directors = array_of_hashes.map { |x| x[:director]}.uniq.sort_by { |x| x.split.last }

# количество фильмов, снятых не в США.
number_of_nonusa = array_of_hashes.reject { |x| x[:country].include? ("USA")}.count

# Вывести результат
puts "\n\n5 longest movies:\n#{"*"*70}"
nice_output(arr_five_longest)
puts "\n\n10 most recent comedies\n#{"*"*70}"
nice_output(arr_ten_comedies)
puts "\n\nList of Directors in alphabetical order\n#{"*"*70}"
directors.each { |x| print "#{x}; "}
puts "\n\nNumber of non-USA movies: #{number_of_nonusa}\n\n"
puts "\n\n"