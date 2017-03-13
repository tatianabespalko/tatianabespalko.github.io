
sum = 0
[1, 2, 3, 4, 5, 6, 7, 8, 9].each { |number| sum += number }
puts sum


def sum(*members)
    initial = 0
    members.collect{ | item | initial += item }
    initial
end