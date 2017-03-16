class Employee
	attr_reader :name#, :salary
	def name=(name)
		# Код проверки и присваивания @name
		if name == ""
		raise "Name can't be blank!" # Если имя остается пустым, вывести сообщение об ошибке.
		end
		@name = name # Cохранить имя в переменной екземпляра
	end
	def initialize (name = "Anonymous")
    	self.name = name
    end
    def print_name
    	puts "Name: #{name}"
	end
end
class SalariedEmployee < Employee
	attr_reader :salary
	def salary=(salary)
		# Код проверки и присваивания @salary
		if salary < 0 # Вывести сообщение ошибке если годовой доход отрицателен
			raise "A salary of #{salary} isn't valid!"
		end
		@salary = salary
	end
	def initialize (name = "Anonymous", salary = 0.0)
		super(name)
		self.salary = salary
	end
	def print_pay_stub
		print_name
		pay_for_period = (salary / 365.0) * 14
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay This Period: #{formatted_pay}"
	end
end
class HourlyEmployee < Employee
	def self.security_guard(name)
		HourlyEmployee.new(name, 19.25, 30)
	end
	def self.cashier(name)
		HourlyEmployee.new(name, 12.75, 25)	
	end
	def self.janitor(name)
		HourlyEmployee.new(name, 10.5, 20)
	end
	attr_reader :hourly_wage, :hours_per_week
	def hourly_wage=(hourly_wage) # Код проверки и присваивания @hourly_wage
		if hourly_wage < 0
			raise "An hourly wage of #{hourly_wage} isn't valid"
		end
		@hourly_wage = hourly_wage
	end
	def hours_per_week=(hours_per_week) # Код проверки и присваивания @hours_per_week
		if hours_per_week < 0
			raise "#{hours_per_week} hours per week isn't valid"
		end
		@hours_per_week = hours_per_week
	end
	def initialize (name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
		super(name)
		self.hourly_wage = hourly_wage
		self.hours_per_week = hours_per_week
	end	
	def print_pay_stub
		print_name
		pay_for_period = hourly_wage * hours_per_week * 2
		formatted_pay = format("$%.2f", pay_for_period)
		puts "Pay This Period: #{formatted_pay}"
	end
end
	#		pay_for_period =(salary/365.0) * 14 # вычислить 14-дневную часть оклада работника.
	#		formatted_pay = format("%.2f", pay_for_period) # Получение строки с денежной суммой, округленной до двух цифр в дробной части 
	#		puts "Pay This Period: $#{formatted_pay}" # Вывести начисленную сумму (отформатированная)
	#	end
	#end

	#def initialize (name = "Anonymous", salary = 0.0)
		#self.name = name # присваивает значение переменной экземпляра @name
		#self.salary = salary # Присваивает значение ПЭ @salary
	#end
	#def print_pay_stub
		#p @name, @salary
		#puts "Name: #{@name}" # Вывести имя работника.
		#puts "Name: #{self.name}"
		#pay_for_period = (@salary / 365.0) * 14 # вычислить 14-дневную часть оклада работника.
		#formatted_pay = format("%.2f", pay_for_period) # Получение строки с денежной суммой, округленной до двух цифр в дробной части 
		#puts "Pay This Period: $#{formatted_pay}" # Вывести начисленную сумму (отформатированная) 
	#end



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
#Employee.new("Amy Blake", 50000).print_pay_stub
#kara = Employee.new
#employee = Employee.new("", -246)
#employee.print_pay_stub

# наследование начало
#salaried_employee = SalariedEmployee.new
#salaried_employee.name = "Jane Doe"
#salaried_employee.salary = 50000
#salaried_employee.print_pay_stub

#hourly_employee = HourlyEmployee.new
#hourly_employee.name = "John Smith"
#hourly_employee.hourly_wage = 14.97
#hourly_employee.hours_per_week = 30
#hourly_employee.print_pay_stub

salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
salaried_employee.print_pay_stub
hourly_employee = HourlyEmployee.new("John Smith", 14.97, 30)
hourly_employee.print_pay_stub

jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub
angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")
angela.print_pay_stub
ivan.print_pay_stub