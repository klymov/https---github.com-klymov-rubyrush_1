# Поют ли соловьи?
if ARGV[0]
  temperature = ARGV[0]
else
  while true
    print "Какая сейчас температура?
    > " # 15
    temperature = gets.chomp
    x = Integer(temperature) rescue false
    break if x
    puts "Введите правильно!"
  end
end
if ARGV[1]
  season = ARGV[1]
else
  while true
    print "Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)
    > "
    season = gets.chomp
    # puts season
    y = Integer(season) rescue false
    break if y || season.to_i < 0 || season.to_i > 3
    puts "Введите правильно!"
  end
end
temperature = temperature.to_i
season = season.to_i
if (season == 1 && (temperature >= 15 && temperature <= 35)) ||
   ((season == 0 || season == 2 || season == 3) && (temperature >= 22 && temperature <= 30))
   puts 'Скорее идите в парк, соловьи поют!'
else
  puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
end
