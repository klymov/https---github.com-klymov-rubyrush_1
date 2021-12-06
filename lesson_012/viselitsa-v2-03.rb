require_relative 'film'
require_relative 'person'

man1 = Person.new('Сергей', 'Петренко', 25)
man1.film = Film.new('Челюсти', 'Якубович')
puts man1.name
puts "с любимым фильмом: #{man1.film.title}"

man2 = Person.new('Марина', 'Петренко', 35)
man2.film = Film.new('Список Шиндлера', 'Зеленский')
puts man2.name
puts "с любимым фильмом: #{man2.film.title}"

man3 = Person.new('Мадонна', 'Артюхова', 32)
man3.film = Film.new('Парк Юрского периода', 'Спилберг')
puts man3.name
puts "с любимым фильмом: #{man3.film.title}"
