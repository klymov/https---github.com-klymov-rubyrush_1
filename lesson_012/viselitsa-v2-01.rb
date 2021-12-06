print 'Врага какого персонажа вы хотите узнать?
> '
hero_name = STDIN.gets.chomp.downcase

case hero_name 
when 'бэтмен', 'batman'
  enemy_name = 'Джокер'
when 'буратино', 'pinocchio'
  enemy_name = 'Карабас-Барабас'
when 'фродо бэггинс', 'frodo baggins'
  enemy_name = 'Саурон'
when 'моцарт', 'mozart'
  enemy_name = 'Сальери'
when 'шерлок холмс', 'sherlock holmes'
  enemy_name = 'Профессор Мориарти'
else
  enemy_name = nil
end

if enemy_name.nil?
  puts 'Не удалось найти врага'
else
  puts "#{enemy_name}!"
end
