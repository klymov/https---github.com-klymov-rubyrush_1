fruits = ["apple", "banana", "orange"]
puts "Массив: #{fruits.to_s}"

basket = []
basket << "apple"
basket.push("orange", "mango", "cherry", "mellon")
puts "Корзина: #{basket.to_s}"
puts basket[3]
basket.delete("mango")
puts basket.to_s
basket.delete_at(0)
puts basket.to_s
basket.delete_at(-1)
puts basket.to_s
