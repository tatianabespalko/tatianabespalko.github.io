file_path = './data/quotes.txt'

puts "Афоризм дня:"

if File.exist?(file_path)
	f = File.new(file_path)
	lines = f.readlines #file.readlines - возвращает весь файл в виде массива строк
	lines.sample
else
	puts 'Файл не найден'
end