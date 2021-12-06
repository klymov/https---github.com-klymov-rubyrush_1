require_relative 'film'

print 'Фильмы какого режиссера Вы хотите посмотреть?
> '
director_name = STDIN.gets.chomp

films = []

while films.size < 3
  print "Какой-нибудь его хороший фильм?\n>"
  film_name = STDIN.gets.chomp
  film = Film.new(film_name, director_name)
  films << film
end

film = films.sample

puts "И сегодня вечером рекомендую посмотреть: #{film.title}"
puts "Режиссера: #{film.director}"
