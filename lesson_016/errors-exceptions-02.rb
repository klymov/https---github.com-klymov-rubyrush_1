print 'Первое число:
> ' 
first_num = gets.chomp# 50
print 'Второе число:
> ' 
second_num = gets.chomp# 50
print "Выберите операцию (+ - * /):
> "
math_action = gets.chomp

case math_action
when '+'
  result = first_num.to_f + second_num.to_f
when '-'
  result = first_num.to_f - second_num.to_f
when '*'
  result = first_num.to_f * second_num.to_f
when '/'
  result = first_num.to_f / second_num.to_f
else
  puts "Введенного действия #{math_action} не сущесвует"
end

puts "Результат: #{result}"
