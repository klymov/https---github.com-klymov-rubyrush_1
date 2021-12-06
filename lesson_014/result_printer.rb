class ResultPrinter
  def initialize
    @status_image = []

    current_path = File.dirname(__FILE__)
    counter = 0

    while counter <= 7
      file_name = current_path + "/images/#{counter}.txt"
      # puts file_name
      if File.exist?(file_name)
        f = File.new(file_name)
        @status_image << f.read
        f.close
      else
        @status_image << "\n[ Изображение не найдено ]\n" 
      end
      counter += 1
    end
  end

  def print_status(game)
    cls
    puts "Игра виселица. Версия 3\n\n"
    puts "\nСлово: " + get_word_for_print(game.letters, game.good_letters)
    puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"
    
    print_viselitsa(game.errors)

    if game.errors >= 7
      puts "Вы проиграли :("
      abort "Было загадано слово: #{game.letters.join}\n\n"
    elsif game.letters.uniq.size == game.good_letters.size
      abort "Поздравляем! Вы выиграли!\n\n"
    else
      puts "У вас осталось: #{7 - game.errors}"
    end
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
    result
  end

  def cls
    system('cls') || system('clear')
  end

  def print_viselitsa(errors)
    puts @status_image[errors]
  end
end
