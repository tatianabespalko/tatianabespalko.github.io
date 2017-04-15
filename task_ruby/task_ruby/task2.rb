#задачка - сумма цифр в числі
#- мати число -  ввести через термінал
#- розбити число на цифри -  одна змінна з масивом
#- знайти непарні числа - цикл "array", що проходить по елементам з одної змінна з масивом 
#- знайти кількість непарних чисел 
#- вивести кількість парних чисел
#- вивести результaт -  вивести в термінал

# ввести через термінал
puts "Please, enter the number:"
a = gets
puts "The number is " + a

# одна змінна з масивом
b = []
#last = a.size
#last.times{|i| b << a[i].to_i }
elem = a.size
array.find_all{ |elem| elem.even? }
array.find_all{ |elem| elem.odd? }

# що проходить по елементам з однією змінною масиву each 
#c = 0
#b.each do |d|
#	c += d
#end




# вивести в термінал
puts "The sum of its digits is"
puts c