require './bridge.rb'

puts 'Поехали!'
sleep 1
puts 'Внезапно река!'
sleep 1

bridge = Bridge.new
sleep 1

bridge.open unless bridge.is_opened?
abort 'мост не удалось открыть!' unless bridge.is_opened?

puts 'Проехали мост'
sleep 2

bridge.close

sleep 1

puts 'Второй километр'
sleep 1

puts 'Третий километр'
sleep 1

puts 'Finish!'
