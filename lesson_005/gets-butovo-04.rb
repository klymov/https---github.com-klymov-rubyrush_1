print 'Привет! Ты кто?
1. Аня
2. Таня
3. Света
4. Настя
5. Игорь
6. Вова
> '
answer = gets.to_i
if (1..4).include?(answer)
  gender = 'Девушка'
elsif (5..6).include?(answer)
  gender = 'Молодой человек'
else
  gender = 'Грейси'
end
print gender + ', ты любишь играть в машинки?
1. Да
2. Нет
> '
drive = gets.chomp
if drive == '1'
  puts "#{gender}, вам просто необходимо пойти на курсы вождения!"
elsif drive == '2'
  puts "#{gender}, вам просто необходимо найти того, кто пойдет на курсы вождения вместо вас!"
else
  puts "#{gender}, Вы очень рассеяны! Пройдите тест сначала..."
end
