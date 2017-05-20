array = [1, 2, 3, 4, 5]
array.find_all{ |elem| elem.even? }    #=> [2, 4]
array.find_all{ |elem| elem.odd? }     #=> [1, 3, 5] 