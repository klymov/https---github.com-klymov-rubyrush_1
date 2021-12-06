print 'Какая у вас на руках валюта?
  1. Рубли
  2. Доллары
> '# 2
route = gets.to_i
print 'Сколько сейчас стоит 1 доллар?
> '
usd_rate = gets.to_f#  41.10
if route == 2
  print 'Сколько у вас долларов?
  > '
  usd = gets.to_f  # 500
  rub = (usd * usd_rate).round
  puts "Ваши запасы на сегодня равны: #{rub} руб."
else
  print 'Сколько  у вас рублей?
  > '
  rub = gets.to_f  #  30000
  usd = (rub / usd_rate).round(2)
  puts "Ваши запасы равны: $ #{usd}"
end
