class Game #classИмяКласса  ... end
	def initialize(slovo)
		@letters = get_letters(slovo) #создадим все нужные для каждой игри @поля

		@errors = 0

		@good_letters = []

		@bad_letters = []

		@status = 0
	end

	def get_letters(slovo)
		if (slovo == nil || slovo == "")
			abort "Вы не ввели слово для игры!"	
		end
		return slovo.split("")
	end

	# 1. Спросить букву с консоли
	# 2. Проверить результат
	def ask_next_letter
		puts "\n Введите следующую букву"

		letter = ""
		while letter == "" do
			letter = STDIN.gets.encode("UTF-8").chomp
		end
		next_step(letter)
	end
	# Метод next_step должен проверить наличие буквы в загаднном слове
	# Или среди уже названных букв (массивы @good_letter, @bad_letters)
	# Аналог метода check_results в первой версии "Виселицы"
	def next_step(bukva)
		if @status == -1 || @status == 1
			return # return  =  return nil то же самое - просто завершает метод
		end
		if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
			return
		end
		if @letters.include?(bukva)

			@good_letters << bukva

			if @good_letters.size == @letters.uniq.size
				@status = 1
			end
		else
			@bad_letters << bukva

			@errors += 1

			if @errors >= 7
				@status = -1
			end
		end
	end
end
