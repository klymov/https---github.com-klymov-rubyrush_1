# В массиве целых чисел поменяйте местами минимальный и
# максимальный элементы.
# 
# По первому заданию. Там можно сделать просто с командой строкой? 
#                     В массивах будут повторяющиеся числа?
# 
# ответили: Нужно написать метод который будет принимать параметр и выдавать результат

# _________________________________________________
def revers_min_max_arr(arr) 
  min_index = arr.each_with_index.min
  max_index = arr.each_with_index.max
  arr[min_index[1]] = max_index[0]
  arr[max_index[1]] = min_index[0]
  arr
end
# _________________________________________________


def revers_min_max_arr_2(arr)
  min = max = []
  min[0] = max[0] = arr[0]
  
  arr.each_with_index do |num, index|
    if num < min[0].to_i
      min[0] = num
      min[1] = index
    end
  
    if num > max[0].to_i
      max[0] = num
      max[1] = index
    end
  end

  arr[min[1]] = max[0]
  arr[max[1]] = min[0]
  arr
end

arr = arr_2 = [2,3,4,5,1]

p revers_min_max_arr(arr)
p revers_min_max_arr_2(arr_2)
