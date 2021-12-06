print "Введите email:\n> "
email = STDIN.gets.chomp

# if email =~ /\A[^@\s]+@[^@\s]+\z/
if email =~ /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
  puts 'Спасибо!'
else
  puts "Какая-то фигня!\nЭто не email"
end

# URI::MailTo::EMAIL_REGEXP
