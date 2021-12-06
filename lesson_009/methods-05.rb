def sklonenie(number, krokodil, krokodila, krokodilov)
  if (number == nil || !number.is_a?(Numeric))
    number = 0
  end
  ostatok = number % 10

  if ((number % 100) >= 11 && (number % 100) <= 14)
    return krokodilov
  elsif (ostatok == 1)
    return krokodil
  elsif (ostatok >= 2 && ostatok <= 4)
    return krokodila
  elsif (ostatok > 4 || ostatok == 0)
    return krokodilov
  end
end

skolko = ARGV[0].to_i
# sklonenie(skolko)
puts "#{skolko} " +
  sklonenie(skolko, "негритёнок", "негритёнка", "негритят") + " " +
  sklonenie(skolko, "пошёл", "пошли", "пошли") +
  " купаться в море!"
