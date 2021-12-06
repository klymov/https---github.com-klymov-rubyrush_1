current_path = File.dirname(__FILE__)
file = File.new(current_path + "/data/weekends.txt")
weekends = IO.readlines(file, chomp: true)
file.close

time = Time.now
weekday_number = time.wday.to_int
today = time.strftime("%d.%m.%Y")
today_happy = false

if weekday_number == 0 || weekday_number == 6 || weekends.include?(today)
  puts 'Сегодня выходной!'
else
  puts 'Сегодня будний день, за работу!'
end
