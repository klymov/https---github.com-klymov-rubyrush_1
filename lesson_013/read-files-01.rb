# ruby read-files-01.rb data/file.txt

current_path = File.dirname(__FILE__) + '/data/file.txt'
abort 'Файл не найден!' unless File.exist?(current_path)

f = File.open(current_path, 'r')
i = 0
reverse_f = []
number_empty_lines = 0
number_lines_filled = 0

f.each do |line|
  if line.size <= 1
    number_empty_lines += 1
  else
    number_lines_filled += 1
    reverse_f << line
  end
  i += 1
end

puts "Открыли файл: #{f.path}" # data/file.txt
puts "Всего строк: #{i}"
puts "Пустых строк: #{number_empty_lines}" # 4
puts "#{number_lines_filled} заполненных строк файла:\n\n"
# reverse_f.reverse!
reverse_f.each { |line| puts line }

# Это пятая строка с конца.
# Это четвёртая строка с конца.
# Это третья строка с конца.
# Это вторая строка с конца.
# Это последняя строка.

def variant2
  lines.each_with_index do |line, index|
    # Если индекс элемента отличается от длины массива на 5 или меньше, добавляем
    # этот элемент в массив последних 5 строк.
    if lines.size - index <= 5
      last_five_lines << line
    end
  end
end
