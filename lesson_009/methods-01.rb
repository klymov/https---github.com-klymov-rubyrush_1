def circle_square(name_circle = '')
  loop do
    print "Введите радиус #{name_circle} круга:\n> "
    radius = gets.to_f
    unless radius.zero?
      break "Площадь #{name_circle} круга: #{(Math::PI * (radius ** 2)).round(3)}"
    end
  end
end

puts circle_square
name_circle = 'второго'
puts circle_square(name_circle)
