class ResultPrinter
  def print_status(game)
    cls
    puts "Игра виселица. Версия 2\n\n"
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
    case errors
      when 0
        puts "
        ______
        |/
        |
        |
        |
        |
        |
        |
        |
      __|_______
      |        |
      "
      when 1
        puts "
        ______
        |/
        |    ( )
        |
        |
        |
        |
        |
        |
      __|_______
      |        |
      "
      when 2
        puts "
        ______
        |/
        |    ( )
        |     |
        |
        |
        |
        |
        |
      __|_______
      |        |
      "
      when 3
        puts "
        ______
        |/
        |    ( )
        |     |_
        |       \\
        |
        |
        |
        |
      __|_______
      |        |
      "
      when 4
        puts "
        ______
        |/
        |    ( )
        |    _|_
        |   /   \\
        |
        |
        |
        |
      __|_______
      |        |
      "
      when 5
        puts "
        ______
        |/
        |    ( )
        |    _|_
        |   / | \\
        |     |
        |
        |
        |
      __|_______
      |        |
      "
      when 6
        puts "
        ______
        |/
        |    ( )
        |    _|_
        |   / | \\
        |     |
        |    / \\
        |   /   \\
        |
      __|_______
      |        |
      "
      when 7
        puts "
        ______
        |/    |
        |    (_)
        |    _|_
        |   / | \\
        |     |
        |    / \\
        |   /   \\
        |
      __|_______
      |        |
      "
    end
  end
end
