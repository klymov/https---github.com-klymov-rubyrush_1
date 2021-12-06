def get_letters
  word = ARGV[0]
  if (word == nil || word == '')
    abort 'Вы не ввели слово для игры'
  end
  return word.downcase.split("")
end

def get_user_input
  letter = ''
  while letter == '' do
    letter = STDIN.gets.chomp.downcase
  end
  return letter
end

def check_result(user_input, letters, good_letters, bad_letters)
  if (good_letters.include?(user_input) || bad_letters.include?(user_input))
    return 0
  end

  # формируем массив вводных символов
  yo = []
  if user_input == 'ё' || user_input == 'е'
    yo << 'ё'
    yo << 'е'
  elsif user_input == 'и' || user_input == 'й'
    yo << 'и'
    yo << 'й'
  else
    yo << user_input
  end

  # Перебираем массив 
  yo.each do |letter|
    # есть данная буква из массива в слове
    if letters.include?(letter)
      case letter
      when 'е'
        (good_letters << 'ё') if letters.include?('ё')
        (good_letters << 'е') if letters.include?('е')
      when 'ё'
        (good_letters << 'ё') if letters.include?('ё')
        (good_letters << 'е') if letters.include?('е')
      when 'и'
        (good_letters << 'й') if letters.include?('й')
        (good_letters << 'и') if letters.include?('и')
      when 'й'
        (good_letters << 'и') if letters.include?('и')
        (good_letters << 'й') if letters.include?('й')
      else
        good_letters << letter
      end

      if letters.uniq.size == good_letters.size
        return 1
      else
        return 0
      end
    end
  end
  # в остальных случаях запись в плохие
  bad_letters << user_input
  return -1
end

def get_word_for_print(letters, good_letters)
  result = ''

  for letter in letters do
    if good_letters.include? (letter)
      result += letter + ' '
    else
      result += '__ '
    end
  end

  return result
end

def print_status(letters, good_letters, bad_letters, errors)
  cls
  puts "\nСлово: " + get_word_for_print(letters, good_letters)

  puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

  if errors >= 7
    puts "Вы проиграли :("
    puts "Было загадано слово: #{letters.join}\n\n"
  elsif letters.uniq.size == good_letters.size
    puts "Поздравляем! Вы выиграли!\n\n"
  else
    puts "У вас осталось: #{(7 - errors)}"
  end
end

def cls
  system('cls') || system('clear')
end