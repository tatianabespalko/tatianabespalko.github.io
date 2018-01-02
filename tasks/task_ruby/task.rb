
def calc(num)
  puts num
  num.even? ? calc(num / 2) : calc(num * 3) if num != 1
end

print "Enter Number: "
calc gets.to_i