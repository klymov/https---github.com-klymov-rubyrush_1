puts "Привет, я тво дневник. Скажи мне, что у тебя на уме и в душе?"
puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."
puts

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do
  line = STDIN.gets.chomp
  all_lines << line
end

time = Time.now
file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")

separator = '-' * 45

file = File.new(current_path + "/" + file_name + '.txt', 'a')

file.print("\n" + time_string + "\n")
all_lines.pop
for item in all_lines do
  file.puts(item)
end

file.puts separator

puts "Ваша запись сохранена в файл: #{file_name}.txt"
