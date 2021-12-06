puts 'Введите строку, которую надо проверить на «палиндромность»:'
original_string = STDIN.gets.chomp

stripped_string = original_string.delete(' ,.!?;:—-').downcase

# original_string = gets.strip.downcase.gsub!(/ /,"")
reverse_string = original_string.reverse

if reverse_string == original_string
  puts 'Да, это палиндром'
else
  puts 'Нет, это не палиндром'
end
