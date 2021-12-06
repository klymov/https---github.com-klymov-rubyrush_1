current_path = File.dirname(__FILE__)
file_name = current_path + "/data/films.txt"
# puts File.exist?(file_name)

if File.exist?(file_name)
  f = File.new(file_name)
  films = f.readlines
  f.close
  film = films.sample.chomp
else
   alert 'Список фильмов не найден'
end
puts 'Сегодня Вам предлагается к просмотру фильм:'
puts film
