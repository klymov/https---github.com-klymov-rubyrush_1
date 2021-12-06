time = Time.now

if (6..7).include?(time.wday.to_int)
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний день, за работу!'
end
