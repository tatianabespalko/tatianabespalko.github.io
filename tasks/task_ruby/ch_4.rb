# chapter 4.1-4.2
# puts 17 + 42
#puts ""         # Пустая строка
#puts "foo"      # Не пустая строка
#puts "foo" + "bar" # Конкатенация строк - обьединение строк
#puts first_name = "Tanya"    # Присвоение переменной
#puts "#{first_name} Bespalko"     # Интерполяция строки
#puts last_name = "Bespalko"
#puts first_name + " " + last_name  # Конкатенация с пробелом
#puts "#{first_name} #{last_name}"  # Эквивалентная интерполяция
#print "foo"       # выводит на экран строку (тоже что и puts, но без символа новой строки):
#print "foo\n" # = puts "foo"
#puts '#{foo} bar'
#puts "\#{foo} bar"
#puts '\n'
#puts "\n"
#puts "\\n"
#puts 'Newlines (\n) and tabs (\t) both use the backslash character \.'
#puts "foobar".length
#puts "foobar".empty?
#puts "".empty?


#s = "foobar"  # возвращаемое значение — boolean (булево, логика): true (истина) или false (ложь)
#	if s.empty?
#	print "The string is empty"
#	else
#	print "The string is nonempty"
#end

#Булевые значения также могут быть объединены с помощью
# && (“и”), || (“или”), и ! (“не”) операторов

#x = "foo"
#y = ""
#puts "Both strings are empty" if x.empty? && y.empty?

#puts "One of the strings is empty" if x.empty? || y.empty?
#"One of the strings is empty"

#puts "x is not empty" if !x.empty?
#"x is not empty"
#nil.to_s
#puts nil.to_s.empty?
#puts "foo".nil?
#puts "".nil?
#puts nil.nil?
#puts "x is not empty" if !x.empty? # in `<main>': undefined local variable or method `x' for main:Object (NameError)

#string = "foobar"
#puts "The string '#{string}' is nonempty." unless string.empty?
# =>The string 'foobar' is nonempty.

#if nil
#	true
#else
#	false        # nil является false
#end
#=> false

#if 0
#	true        # 0 (и все остальные кроме nil и самой false) является true
#else
#	false
#end
#=> true

#def string_message(the_function_argument)
#	if the_function_argument.empty?
#		"It's an empty string!"
#	else
#		"The string is nonempty."
#	end
#end
#puts string_message("")
##=> It's an empty string!
#puts string_message("foobar")
##=> The string is nonempty.


#def string_message(string)
#	return "It's an empty string!" if string.empty?
#	return "The string is nonempty."
#end

# chapter 4.3
#Массив - список элементов в определенном порядке.
#puts "[foo bar     baz]".split 

#a = [42, 8, 17]
#puts a[0]
#puts a[1]
#puts a[2]
#puts a[-1]
#puts a
#puts a.first
#puts "fooxbarxbazx".split('x')
#puts a.second # The second method used here isn’t currently part of Ruby itself, but rather is added by Rails. It works in this case because the Rails console automatically includes the Rails extensions to Ruby.
#puts a.last
#puts a.last == a[-1]

#puts x = a.length
#puts x == 3
#puts x == 1
#puts x !=1
#puts x >= 1
#puts x < 1

#puts a.sort
#puts a.reverse
#puts a.shuffle

#puts a.sort! # “bang” methods - изменяет массив
#puts a

#puts a.push(6)
#puts a << 7
#puts a << "foo" << "bar"
#puts a
#puts a.join
#puts a.join(', ')

#puts (0..9).to_a.join   
#puts a = %w[foo bar baz quux]
#puts a[0..2]
#puts a[2..(a.length-1)] 
#puts a[2..-1]

#puts ('a'..'e').to_a

#puts (1..5).each { |i| puts 2 * i }
#>>(1..5).each do |i|
#?>   puts 2 * i
#>> end

#3.times { puts "Betelgeuse!" }
#puts (1..5).map { |i| i**2 }    # Нотация ** обозначает 'степень'.
#puts %w[a b c]                  # Вспомните что %w создает массив строк.
#puts %w[a b c].map { |char| char.upcase }
#puts %w[A B C].map { |char| char.downcase }
# puts ('a'..'z').to_a.shuffle[0..7].join

#puts ('a'..'z').to_a.join            # Перемешиваем его.
#puts('a'..'z').to_a.shuffle.join     # Перемешиваем его.
#puts ('a'..'z').to_a.shuffle[0..7]   # Вытаскиваем первые восемь элементов.

#puts user = {}
#user["first_name"] = "Tanya" 
#user["last_name"] = "Bespalko"
#user["first_name"] 
#puts user
#puts user = { "first_name" => "Michael", "last_name" => "Hartl" }

#def string_shuffle(s)
#s.split('').shuffle!.join
#end

# => :string_shuffle 

#puts string_shuffle("foobar")
# => "abforo"



# Вирішення Задачі № 1

#def string_shuffle(s)
#s.split('').shuffle!.join

#a = s.split("")
#a.shuffle!
#a.join

#end

# => :string_shuffle 
#puts string_shuffle("foobar")

# => "abforo"

class String
	def shuffle
		self.split('').shuffle.join
	end
end


puts "foolbar".shuffle


#class String
#	def shuffle
#		String [self.split('')].reverse
#	end
#end

#puts "foobar".shuffle

#puts ('a'..'z').to_a.join
#puts ('a'..'z').to_a.shuffle.join
#puts ('a'..'z').to_a.shuffle[0..7].join

