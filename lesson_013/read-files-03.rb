current_path = File.dirname(__FILE__)
file_path = current_path + '/data/'

questions = []
answers = []
correct_answers = 0

unless File.exist?(file_path + 'questions.txt') && File.exist?(file_path + 'answers.txt')
  abort 'Один из файлов не найден!'
end

# v.1
questions_file = File.new(file_path + 'questions.txt')
questions = questions_file.readlines
questions_file.close

# v.2
f = File.new(file_path + 'answers.txt')
f.each { |a| answers << a.chomp }
f.close

puts "Мини-викторина. Ответьте на вопросы.\n\n"

i = 0
while i < questions.size do
  print "#{questions[i].chomp}\n> "
  answer = gets.chomp
  if answers[i] == answer
    correct_answers += 1
    puts "Верный ответ!\n\n"
  else
    puts "Неправильно. Правильный ответ: #{answers[i]}\n\n"
  end
  i += 1
end

puts "У вас #{correct_answers} правильных ответов из #{questions.size}\n\n"
