#puts "Привет! Как тебя зовут?" # метод выводит строку на екран

#name = gets.chomp # ввод строки пользователем из консоли

#puts "Привет, " + name + ", как дела?"

# КВЕСТ "ЮЖНОЕ БУТОВО"

puts "Вы решили прогуляться в Южном Бутово и наткнулись на спортивных ребят:
1. Попытаться убежать
2. Продолжать идти"

choice = gets.chomp

if choice == "1"
	abort "Ребята без труда догнали вас и побили. Не знаю за что." # abort - досрочное завершение программы
else
	puts "Один из ребят вышел вперед и спросил \"Сиги есть?\"
	1. Дать покурить
	2. -- Не курю"

	choice = gets.chomp

	if choice == "1"
		abort "Прикурив, ребята отправились дальше"
	else
		abort "Ребята расстроились и побили вас. Теперь уже ясно за что."
	end

end

