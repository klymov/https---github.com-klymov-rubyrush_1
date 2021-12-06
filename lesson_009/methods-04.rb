def check_number(number, guess)
  compar_num = (guess - number).abs.to_i
  print 'Тепло ' if compar_num < 3 && compar_num > 0
  if guess > number
    puts '(нужно меньше)'
  elsif guess < number
    puts '(нужно больше)'
  else
    abort 'Ура, вы выиграли!'
  end
end

number = rand(16).to_i
puts "Загадано число от 0 до 15, отгадайте какое? (#{number})"

$i = 0
while $i < 3 do
  print '> '
  guess = gets.to_i
  check_number(number, guess)
  $i += 1
end
puts "В этот раз вам не повезло. Было загадано число #{number}"
