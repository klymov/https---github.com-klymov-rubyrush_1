arr = []
print 'Какой длины будет массив случайных чисел?
> '
array_length = gets.to_i # 9

(0..array_length).each { |n| arr[n] = rand(101) }
puts arr.to_s
# [55, 19, 54, 41, 74, 94, 87, 85, 49]
puts "Самое большое число:
#{arr.max}" # 94
