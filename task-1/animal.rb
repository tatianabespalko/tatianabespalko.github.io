class Bird
	def talk
		puts "Chirp! Chirp!"
	end
	def move(destination)
		puts "Flying to the #{destination}."
	end
end
class Dog
	def talk
		puts "Bark!"
	end
	def move(destination)
		puts "Running to the #{destination}."		
	end
end

class Cat
	def talk
		puts "Meow!"
	end
	def move(destination)
		puts "Running to the #{destination}."		
	end
end

bird = Bird.new #имя класса - создание новых екземпляров наших классов
dog = Dog.new
cat = Cat.new

bird.move("tree") # методы экземпляра - вызов методов для екземпляров
dog.talk
bird.talk
cat.move("house")

class Dog
	def make_up_name
		@name = "Sandy" #  при завершении "name" выходит из области видимости
	end
	def talk
		puts "#{@name} says Bark!" # в этой точке переменной нет		
	end
	def move(destination)
		puts "#{@name} runs to the #{destination}."		
	end
	def make_up_age
		@age = 5	
	end
	def report_age
		puts "#{@name} is #{@age} years old."	
	end
end
dog = Dog.new
dog.make_up_name
dog.move("yard")
dog.make_up_age
dog.report_age
dog.talk

class MyClass
	def my_attribute=(new_value)
		@my_attribute = new_value
	end
	def my_attribute
		@my_attribute
	end
end
my_instance = MyClass.new
my_instance.my_attribute = "assigned via method call"
puts my_instance.my_attribute
my_instance.my_attribute=("same here")
puts my_instance.my_attribute