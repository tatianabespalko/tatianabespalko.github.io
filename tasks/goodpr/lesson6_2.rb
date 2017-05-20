 fruits = [ "apple", "orange", "banana"] # создали массив

 puts "Массив: " + fruits.to_s # массив to_s - преобразование массива в строчку

 basket = [] #наполняем массив, создаем массив

 basket << "Apple"

 basket.push("Melon")

 basket.push("Cherry", "Mango")

 puts "Корзина: " + basket.to_s

  puts basket[0]# вывод элементов массива
  puts basket[2]

  basket.delete("Melon")# удаляем из массива элемент
  puts "Корзина: " + basket.to_s

  basket.delete_at(0)
  puts basket.to_s