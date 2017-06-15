if File.exist?('./data/quotes.txt')# File.exist?(путь_к_файлу) - проверка наличия файла
	f = File.new('./data/quotes.txt') # file = File.new(путь_к_файлу, кодировка)
	content = f.read
	puts content
#else
#	puts 'Файл не найден'
end
