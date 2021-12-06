names = []
user_input = nil
questions = [
  'Что это за девочка и где она живет?',
  'А вдруг она не курит? А вдруг она не пьет?',
  'А мы с такими рожами возьмем да и припремся к Элис... ;)'
]
while user_input != '' do
  user_input = gets.chomp
  names << user_input
end

for name in names do
  puts "С нами #{name}"
  sleep 1

  if name == "Элис"
    puts 'Элис?? Кто такая Элис?'
    sleep 1
    for question in questions do
      puts question
      sleep 2
    end
    break
  end
end
