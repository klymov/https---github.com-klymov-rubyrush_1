answer_options = %w[камень ножницы бумага]

comp_version = rand(3)
puts "Введите вариант: 0 - камень, 1 - ножницы, 2 - бумага... #{comp_version}"
man_version = gets.to_i

if man_version > (answer_options.count - 1) || man_version.negative?
  puts 'Введите число от 0 до 2'
else
  puts "Вы выбрали: #{answer_options[man_version]}"
  puts "Компьютер выбрал: #{answer_options[comp_version]}"

  if answer_options[man_version] == answer_options[comp_version]
    puts 'Ничья'
  elsif (man_version.zero? && comp_version == 2) ||
        (man_version == 1 && comp_version.zero?) ||
        (man_version == 2 && comp_version == 1)
    puts 'Победил Компьютер'
  else
    puts 'Победил Человек'
  end
end
