class Game
  def initialize(word)
    @letters = get_letters(word)
    @errors = 0
    @good_letters = []
    @bad_letters = []
    @status = 0
  end

  def get_letters(word)
    if (word == nil || word == '')
      abort 'Вы не ввели слово для игры'
    end
    return word.downcase.split("")
  end

  def ask_next_letter
    puts "\nВведите следующую букву"
    letter = ''
    letter = STDIN.gets.chomp.downcase while letter == ''
    next_step(letter)
  end

  def next_step(letter)
    return if @status == -1 || @status == 1
    return if @good_letters.include?(letter) || @bad_letters.include?(letter)

    if @letters.include?(letter)
      @good_letters << letter
      return 1 if @letters.uniq.size == @good_letters.size
      return 0
    end

    @bad_letters << letter
    @errors += 1
    @status = -1 if @errors > 7
    -1
  end

  # Геттеры
  def letters
    @letters
  end

  def good_letters
    @good_letters
  end

  def bad_letters
    @bad_letters
  end

  def status
    @status
  end

  def errors
    @errors
  end
end
