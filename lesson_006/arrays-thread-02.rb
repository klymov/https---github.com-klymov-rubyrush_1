puts 'Исходный массив:'
arr = [1, 2, 3, 4, 5]
puts arr.to_s
puts 'Массив в обратном порядке:'
puts arr.reverse.to_s #[5, 4, 3, 2, 1]
puts 'Исходный массив (не изменился):'
puts arr.to_s # [1, 2, 3, 4, 5]
puts 'Исходный массив (после изменения):'
arr.reverse!
puts arr.to_s #[5, 4, 3, 2, 1]
