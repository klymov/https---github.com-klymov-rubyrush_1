first_array = Array.new(15) { rand(1...100) }
puts "Вот какая палка колбасы у нас есть:\n#{first_array}"
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
print "Сколько первых элементов вам отрезать?\n> "
# 3
cut_first_array = gets.to_i
if cut_first_array < first_array.count
  puts "Вот ваша колбаса:"
  puts first_array.take(cut_first_array).to_s
  # [1, 2, 3]
else
  puts first_array.to_s
end