require "pony"
require "io/console"

my_mail = "test.ihor.klymov@gmail.com"
puts "Введите пароль от вашей почты"
password = STDIN.noecho(&:gets).chomp

puts "Кому отправить письмо?"
send_to = STDIN.gets.chomp

puts "Что написать в письме?"
body = STDIN.gets.chomp


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

# Настройки Pony для почтового ящика на yandex.ru
#
# via: :smtp,
# via_options: {
#   address: 'smtp.yandex.ru',
#   port: '465',
#   enable_starttls_auto: true,
#   tls: true,
#   user_name: my_mail,
#   password: password,
#   authentication: :plain,
# }
#

# Pony.mail(
#   {
#     subject:  "Привет из Руби!",
#     body: body,
#     to:   send_to,
#     from: my_mail,

#     via:  :smtp,
#     via_options: {

#     }
#   }


puts "Письмо успешно отправлено!"
