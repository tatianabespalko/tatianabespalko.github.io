class Employee
	attr_reader :name, :salary
	def name=(name)
		if name == ""
			raise "Name can't be blank!" # Если имя остается пустым, вывести сообщение об ошибке.
		end
		@name = name # Cохранить имя в переменной екземпляра
	end
	def salary=(salary)
		if salary < 0 # Вывести сообщение ошибке если годовой доход отрицателен
			raise "A salary of #{salary} isn't valid!"
		end
		@salary = salary
	end
	def initialize (name = "Anonymous", salary = 0.0)
		self.name = name # присваивает значение переменной экземпляра @name
		self.salary = salary # Присваивает значение ПЭ @salary
	end
	def print_pay_stub
		#p @name, @salary
		#puts "Name: #{@name}" # Вывести имя работника.
		puts "Name: #{self.name}"
		pay_for_period = (@salary / 365.0) * 14 # вычислить 14-дневную часть оклада работника.
		formatted_pay = format("%.2f", pay_for_period) # Получение строки с денежной суммой, округленной до двух цифр в дробной части 
		puts "Pay This Period: $#{formatted_pay}" # Вывести начисленную сумму (отформатированная) 
	end
end

#amy = Employee.new
#amy.name = "Amy Blake"
#amy.salary = 50000
# kara = Employee.new # проверка на ошибки
# kara.name = ""
# ben = Employee.new
# ben.salary = -246
#amy.print_pay_stub # нет центов/ т.е. нет дробной части
#employee = Employee.new("Amy Blake", 50000)
#employee.print_pay_stub
# employee = Employee.new("", 50000)  - нет пустых имен
# employee = Employee.new("Amy Blake", -50000) - нет отрицательных значений
# employee.name = "Jane Doe"
# employee.salary = 50000
#employee = Employee.new("", -50000)
#employee.print_pay_stub
#Employee.new("Jane Doe", 50000).print_pay_stub
#Employee.new("Jane Doe").print_pay_stub
#Employee.new.print_pay_stub
Employee.new("Amy Blake", 50000).print_pay_stub
#kara = Employee.new
#employee = Employee.new("", -246)
#employee.print_pay_stu