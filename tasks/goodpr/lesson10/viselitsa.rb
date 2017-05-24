require "./methods"

puts "игра виселица, версия 1"

letters = get_letters #todo

errors = 0

bad_letters = []
good_letters = []

while errors < 7 do #while (ошибок меньше 7) do ... end
	print_status(letters, good_letters, bad_letters) # todo имя_метода(параметр1, параметр2, ...)
	puts "введите следующую букву"

	user_input = get_user_input #todo
	#todo
	result = check_results(user_input, letters, good_letters, bad_letters) # check_results занимается проверкой введенной буквы

	if (result == -1)
		errors += 1 # операция +- увеличение переменной на заданную величину
	elsif (result == 1)
		break
	end	
end

print_status(letters, good_letters, bad_letters, errors)