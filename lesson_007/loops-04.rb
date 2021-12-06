new_arr  = [1, 2, 3, 4, 5, 6, 7]
next_arr = []

puts "Исходный массив: #{new_arr}"
i = 0
while i < new_arr.count do
  next_arr << new_arr[new_arr.count - 1 - i]
  i += 1
end

puts "Новый массив, полученный из исходного:
#{next_arr}" # [7, 6, 5, 4, 3, 2, 1]

for i in next_arr do
  new_arr.unshift(i)
end

puts "Двойной перегон дозапись в 1й из 2го наоборот
#{new_arr}"
