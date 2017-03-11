
#Get My Number Game
#Written by: you!

puts "Welcome to 'Get My Number!'"

# Получение имени игрока и вывод приветствия.
print "What's your name? "
input = gets
name=input.chomp
puts "Welcome, #{name}!"

# Сохранение случайного числа
puts "I've got a random number between 1 and 100." 
puts "Can you guess it?"
target = rand(100) + 1

# Отслеживание количества попыток.
num_guesses = 0 # Ruby вычисляет результат кода в фигурных скобках, преобразует его в строку в случае необходимости, после чего подставляет его в более длинную строку.
# remaining_guesses = 10 - num_guesses  - примеры для создания кода
# puts "#{remaining_guesses} guesses left" - примеры для создания кода
# puts "#{10 - num_guesses} guesses left." - примеры для создания кода

# Признак продолжения игры
guessed_it = false # переменная добавлена для проверки того, нужно ли выводить сообщение о проиграше. Также она будет использоваться позднее для остановки игры - когда число угадано верно.

# while num_guesses < 10 && guessed_it == false # код не меняется мы его поместили в цикл
until num_guesses == 10 || guessed_it # улучшаем код испольщуя until

puts "You've got #{10 - num_guesses} guesses left"
print "Make a guess: "
guess = gets.to_i

num_guesses += 1 # при каждом выполнении цикла счетчик увеличивается на 1, чтобы цикл не выполнялся бесконечно

# Сравнение введеного числа с загаданным
# и вывод соответствующего сообщения.
if guess < target # Store a random number for the player to guess. puts "I've got a random number between 1 and 100." puts "Can you guess it?" target = rand(100) + 1
# Track how many guesses the player has made. num_guesses = 0
# puts "You've got #{10 — num_guesses} guesses left."
    puts "Oops. Your guess was LOW."
elsif guess > target
	puts "Oops. Your guess was HIGH."
elsif guess == target
	puts "Good job, #{name}!"
	puts "Your guessed my number in #{num_guesses} guesses!"
	guessed_it = true
end
end # Обозначает конец кода
#Если попыток не осталось, сообщить загаданное число.
unless guessed_it
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end

		