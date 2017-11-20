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