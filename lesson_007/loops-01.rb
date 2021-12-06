print 'Введите N
> '
n = gets.to_i # 7
sum_of_numbers = 0

(1..n).each do |num|
  sum_of_numbers += num
end

# [1, 2, 3, 4, 5, 6, 7]
puts "Сумма чисел: #{sum_of_numbers}" # 28
