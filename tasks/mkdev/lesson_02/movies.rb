# 1. А что такое, кстати, File и String? в Ruby существует встроенный класс с именем File, представляющий файл на диске
# Метод open возвращает новый объект File. С помощью методов из file можно выполнять любые файловые запросы. Проверки такого типа выполянются
# перед другими файловыми процедурами.
# Строки в Ruby – это последовательность 8-битных байтов, которые являются объектами класса String.
# 2. Как узнать, какие методы есть у переменной?
# Посмотреть список доступных методов можно вызвав .methods (там не будут содержаться методы, определенные в нем)
# В Ruby существует 4 вида переменных и константы.
# product, users, file, user_rights — все это примеры имен локальных переменных.
#   - Локальные переменные замкнуты в той области видимости, где они объявлены: тело модуля, тело класса, тело метода, объект, блок кода. Снаружи той области где они объявлены эти переменные не видны,
#потому область объявления включая вложенные области является областью видимости локальных переменных.
#   - Переменные экземпляра - @ - jбластью видимости этих переменных является объект
#   - Переменные класса - @@ -будучи объявлеными в любом месте, их областью видимости будет класс и все его экземпляры.
#к переменным класса можно обратиться напрямую
#   - Глобальные переменные - $ - независимо от области в которой они объявлены, они видны везде. 
#Получить список глобальных переменных можно используя метод global_variables.
#   - Константы — это «переменные», чье значение не изменяется, а имя начинается с заглавной литеры

# Считать из файла все фильмы

input = ARGV.join
filename = "movies.txt"

lines = []
File.open("movies.txt") do |movie_file|
	review_file = File.open("movies.txt") 
	lines = movie_file.readlines
	
end

# Вывести названия и рейтинг всех фильмов, в названии которых есть слово "Max"
#string = movie_file.first
#words = string.split("|")

#relevant_lines = lines.find_all { |line| line.include?("Max") }


#p words

#reviews = relevant_lines.reject { |line| line.except?["Maxim"] }
#names  = reviews.map do |review|
#	name = find_name(review)
#end
#puts lines

#def find_all
#	matching_items = []
#	self.each do |item|
#		if yield(item)
#			matching_items << item
#		end
#	end
#end

#p relevant_lines

@movies = {}
lines.each do |value|
  	value = value.split("|")
  	@movies[value[1]] =
	  	{ link: value[0],
	      title: value[1],
	      year: value[2],
	      country: value[3],
	      release: value[4],
	      genres: value[5],
	      time: value[6],
	      rating: value[7],
	      director: value[8],
	      starring: value[9]
	    }
end

def search(str, field = :title)
	filter = @movies.select do |key, value|
		value[field].downcase.include? str.downcase
	end

# Рейтинг нужно вывести количеством звёздочек. Поскольку у всех фильмов в топ-250 рейтинг больше 8,
#то количество звёздочек должно соответствовать десятым долям рейтинга выше восьмёрки (для рейтинга «8.6»
#должна рядом с названием быть выведена строка ******, для 9.2 — соответственно, ************)
	filter.each do |key, value|
	    rating = ((value[:rating].to_f.ceil - value[:rating].to_f)*10).to_i
	    puts "#{value[:title]} #{"".ljust(rating, "*")}"
	end
end

search "Max"