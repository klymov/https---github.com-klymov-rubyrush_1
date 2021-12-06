require_relative 'methods.rb'

regexp_string = get_random_regexp_strig

puts  "Придумайте как можно больше слов, "\
      "содержащих шаблон '#{regexp_string.gsub('.','*')}'"
puts  "Для выхода наберите Х"

count = 0

loop do
  word = STDIN.gets.chomp

  break if word.downcase == 'x' || word.downcase == 'х'
  
  if word_exists?(word)
    if word =~ /#{regexp_string}/
      puts '.. Ok =)'
      count += 1
    else
      puts '.. не подходит =('
    end
  else
    puts 'Нет такого слова в Викисловаре!'
  end
end

puts "Игра закончена. Ваш счет: #{count}"