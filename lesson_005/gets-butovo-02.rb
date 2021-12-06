print 'Сколько сейчас стоит 1 доллар в рублях?
> '
usd_rate = gets.chomp.to_f
# 41.23

print 'Сколько  у вас рублей?
> '
rub = gets.chomp.to_f
#  30000

usd = (rub / usd_rate).round(2)

puts "Ваши запасы равны: $ #{usd.to_s}"
