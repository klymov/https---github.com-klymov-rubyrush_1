car_brands = ['Aston Martin', 'Audi', 'Bentley', 'BMW',
              'Brilliance', 'Cadillac', 'Changan', 'Chery',
              'Chevrolet', 'Toyota']

puts "У нас всего #{car_brands.count} машин. Вам какую?"
num_car = gets.to_i - 1 #-23

if num_car > car_brands.count || num_car.negative?
  puts 'Извините, машины с таким номером у нас нет :('
else
  puts 'Поздравляем, вы получили:'
  puts car_brands[num_car] # Toyota
end
