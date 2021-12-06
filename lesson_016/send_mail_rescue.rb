require "pony"
require "io/console"

my_mail = "test.ihor.klymov@gmail.com"
puts "Введите пароль от вашей почты"
password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо?"
send_to = STDIN.gets.chomp

puts "Что написать в письме?"
body = STDIN.gets.chomp

begin
  
  # Настройки Pony для ящика на gmail.com
  Pony.mail(
    subject: 'Привет из программы на руби!', # тема письма
    body: body, # текст письма, его тело
    to: send_to, # кому отправить письмо
    from: my_mail, # от кого письмо (наш обратный адрес)

    via: :smtp,
    via_options: {
      address: 'smtp.gmail.com',
      port: '587',
      enable_starttls_auto: true,
      user_name: my_mail,
      password: password,
      authentication: :plain,
    }
  )

  puts "Письмо успешно отправлено!"

rescue SocketError
  puts 'Не могу соедениться с сервером'
rescue Net::SMTPSyntaxError => error
  puts 'Вы некорректно задали параметры письма' + error.message
rescue Net::SMTPAuthenticationError => error # => exception
  puts 'Вы неправильно указали пароль: ' + error.message
else
  puts "Congratulations - no errors!"
ensure
  puts 'Попытка отправки письма закончена!'
end
