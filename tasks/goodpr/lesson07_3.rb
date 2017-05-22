# Ввод данных в цикле
names = []
user_input = nil

while user_input != '' do # наполним массив имен, введенных пользователем в консоли
	user_input = gets.chomp
	names << user_input
end

for item in names do
	puts "C нами " + item
	sleep 1
	if (item == 'Элис')
		puts "Элис?? Кто такая Элис?"
		sleep 1
		break # break - досрочный выход из цикла
	end
end

puts "А что это за девочка и где она живет?"
puts "А вдруг она не курит, а вдруг она не пьет?"
puts "Ну а мы с такими рожами возьмем да и припремся к Элис...))"