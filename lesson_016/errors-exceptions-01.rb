print 'Первое число:
> ' 
first_num = gets.chomp# 50
print 'Второе число:
> ' 
second_num = gets.chomp# 50
print "Выберите операцию (+ - * /):
> "
math_action = gets.chomp

begin
  case math_action
  when '+'
    result = first_num.to_i + second_num.to_i
  when '-'
    result = first_num.to_i - second_num.to_i
  when '*'
    result = first_num.to_i * second_num.to_i
  when '/'
    result = first_num.to_i / second_num.to_i
  else
    puts "Введенного действия #{math_action} не сущесвует"
  end
  
  
rescue ZeroDivisionError
  puts 'На ноль делить нельзя'
else
  puts "Результат: #{result}"
ensure
  puts 'Расчет закончен'
end
