print 'Привет! '
while true do
puts 'Ты кто?
1. Аня
2. Таня
3. Света
4. Настя
5. Игорь
6. Вова'
  print '> '
  answer = gets.to_i
  break if answer >= 1 && answer <= 6
  puts
  print ' Да ты не прочитал?!...'
end
if (1..4).include?(answer)
  gender = 'Девушка'
elsif (5..6).include?(answer)
  gender = 'Молодой человек'
else
  gender = 'Грейси'
end

until drive == 1 || drive == 2 do
  print gender + ', ты любишь играть в машинки?
  1. Да
  2. Нет
  > '
  drive = gets.chomp
end

if drive == '1'
  puts "#{gender}, вам просто необходимо пойти на курсы вождения!"
elsif drive == '2'
  puts "#{gender}, вам необходимо найти, кто пойдет на курсы вождения с вами!"
else
  puts "#{gender}, Вы очень рассеяны! Пройдите тест сначала..."
end
