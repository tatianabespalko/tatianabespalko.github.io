class Animal
	#def name= (new_value)
	#	@name = new_value #записываем новое значение в @name
	#end
	#attr_accessor :name, :age
	attr_reader :name, :age #автоматически определяются только методы чтения
	def name= (value) # метод записи атрибута для @name
		if value == "" # если значение value - недействительно
			#puts "Name can't be blank!" #если имя пустое, вывести сообщение об ошибке.
			raise "Name can't be blank!" # проверка данных - выполнение прерывается в этой точке
		end
			@name = value # Значение ПЭ присваивается, когда имя прошло проверку
	end
	def age= (value) # метод записи атрибута для @age
		if value < 0 # Если возраст отрицателен вывести сообщение об ошибке
			raise "An age of #{value} isn't valid!"
		end
			@age = value # Значение ПЭ присваивается, когда возраст прошел проверку
	end
	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end
	def talk
		puts "#{@name} says Bark!"
	end
	def report_age # метод экземпляра
		puts "#{@name} is #{@age} years old" # использование ПЭ
	end
	#def name
	#	@name #читаем значениe из @name
	#end
	#def age= (new_value)
	#@age = new_value #записываем новое значение	в @age
	#end
	#def age
	#	@age #читаем значениe из @age
	#end
end
class Dog < Animal # наследование
	def to_s
		"#{@name} the dog, age #{age}"
	end
end
class Cat < Animal # наследование
	def talk
		puts "#{@name} says Meow!"
	end
end
class Bird < Animal # наследование
	def talk
		puts "#{@name} says Chirp! Chirp!"
	end
end
class Armadillo < Animal
	def move (destination) # переопределяет метод "move" из суперкласса
		puts "#{@name} unrolls!" # новая функциональность
		# puts "#{@name} runs to the #{destination}." - повторяющаяяся строка
		super 
	end
end

#dog = Dog.new # создание нового екземпляра dog
#dog.name = "Daisy" # Инициализация атрибутов - Присвоить @name значение Fido.
#dog.age = 3 # Инициализация атрибутов - Задать переменную @age для объекта с именем Fido

#dog.report_age # вызов метода екземпляра
#dog.talk # вызов метода екземпляра
#dog.move("bed") # вызов метода екземпляра

#dog.make_up_name
#dog.move("yard")
#dog.make_up_age
#dog.report_age

whiskers = Cat.new
whiskers.name = "Whiskers"
fido = Dog.new
fido.name = "Fido"
polly = Bird.new
polly.name = "Polly"
polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk
polly.talk
dillon = Armadillo.new
dillon.name = "Dillon"
dillon.move("burrow")
lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4

puts Dog.superclass
puts Animal.superclass
rex = Dog.new
rex.name = "Rex"
rex.age = 2

puts lucy.to_s, rex.to_s
puts lucy, rex