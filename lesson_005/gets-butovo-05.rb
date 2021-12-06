rand_num = rand(0..16).to_i
puts "Загадано число от 0 до 16, отгадайте какое? (#{rand_num.to_s})"
$i = 0

while $i < 3 do
  print '> '
  number = gets.to_i
  compar_num = (number - rand_num).abs
  print 'Тепло ' if compar_num < 3 && compar_num > 0
  if number > rand_num
    puts '(нужно меньше)'
  elsif number < rand_num
    puts '(нужно больше)'
  else
    abort 'Ура, вы выиграли!'
  end
  $i +=1
end
puts "В этот раз вам не повезло. Было загадано число #{rand_num.to_s}"
