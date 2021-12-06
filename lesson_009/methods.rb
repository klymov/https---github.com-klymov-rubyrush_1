def say_hi(name = 'Зеленский')
  puts "Привет, #{name}! Как твои дела?"
end

say_hi 'Вадим'
say_hi 'Миша'
say_hi

array = [
  'James Bond', 'Bradd Pit', 'Dr. Who', 'House MD', 'Madonna', 'Mr. Putin'
]

puts(array.to_s)

# Без аргументов метод pop удаляет один последний элемент
array.pop
puts array.to_s

# Если же аргумент есть — удаляется столько последних элементов, сколько указано
# в аргументе (array.pop равносильно array.pop(1)).
array.pop(2)
puts(array.to_s)