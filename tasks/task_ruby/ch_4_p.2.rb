# Хеши
#puts user = {} 
#puts user["first_name"] = "Tanya"
#puts user["last_name"] = "Bespalko"
#puts user["first_name"]
#puts user

#puts user = { "first_name" => "Tanya", "last_name" => "Bespalko" }

#puts "name".split('')
#puts :name.split('')
#ch_4_p.2.rb:11:in `<main>': undefined method `split' for :name:Symbol (NoMethodError)

#puts user = { :name => "Michael Hartl", :email => "michael@example.com" }
#puts user[:name]
#puts user[:password].class

#puts h1 = { :name => "Michael Hartl", :email => "michael@example.com" }
#puts h2 = { name: "Michael Hartl", email: "michael@example.com" }
#puts h1 == h2

#puts params = {}
#puts params[:user] = { name: "Michael Hartl", email: "mhartl@example.com" }
#puts params
#puts params[:user][:email]

#flash = { success: "It worked!", error: "It failed." }
#flash.each do |key, value|
#puts "Key #{key.inspect} has value #{value.inspect}"
#end

#puts (1..5).to_a # Вывести массив как строку.
#puts (1..5).to_a.inspect # Вывести буквальный массив.
#puts :name, :name.inspect
#puts "It worked!", "It worked!".inspect
#p :name  

#s = "foobar"
#puts s.class

#s = String.new("foobar")   # Именованный конструктор для строки
#s.class
#puts s == "foobar"

#puts a = Array.new([1, 3, 2])

#puts h = Hash.new
#puts h[:foo].class
#puts h = Hash.new(0)
#puts h[:foo]

#puts s = String.new("foobar")
#puts s.class
#puts s.class.superclass
#puts s.class.superclass.superclass
#puts s.class.superclass.superclass.superclass.class

#class Word < String             # Word наследует от String.
#   # Возвращает true если строка соответствует своему перевертышу.
#   def palindrome?
#     self == self.reverse        # self это сама строка.
#   end
#end

 #puts s = Word.new("level")
 #puts s.palindrome?
 #puts s.length


 #puts s.class
 #puts s.class.superclass
 #puts s.class.superclass.superclass

#class String
	# Возвращает true если строка соответствует своему перевертышу.
#	def palindrome?
#		self == self.reverse
#	end
#end
#puts "deified".palindrome?


#puts "".blank?
#puts true
#puts "      ".empty?
#puts "      ".blank?
#puts nil.blank?

#Создайте три хэша, назовите их person1, person2, и person3, С именем (first name)
#и фамилией (last name) под ключами :first и :last. Затем создайте params хэш с тем,
#чтобы params[:father] являлся person1, params[:mother] являлся person2, и params[:child]
#являлся person3 (father, mother, child это отец, мать, и ребенок соответственно).
#Убедитесь, что, например, params[:father][:first] имеет правильное значение.
params = {}
person1 = { :first => "Nicolai", :last => "Bespalko" }
params[:father] = person1
person2 = { :first => "Lidia", :last => "Bespalko" }
params[:mother] = person2
person3 = { :first => "Tania", :last => "Bespalko"}
params[:child] = person3
puts params[:father][:first]
puts params[:mother][:last]
puts params[:mother][:first]
puts params[:child][:first]
#puts params[:child][:first_name]
#user = { "first_name" => "Michael", "last_name" => "Hartl"