# В массиве целых чисел найти индексы двух наименьших элементов

def two_min_int_in_arr(arr)
  two_min_num = ind_two_min_num = []
  two_min_num = arr.sort.first(2)

  arr.each_with_index do |num, index|
    ind_two_min_num << index if two_min_num.include?(num)
  end

  ind_two_min_num
end

arr = [1, 7, 2, 8, 9]
two_min_int_in_arr(arr)
