current_path = File.dirname(__FILE__)
file_name = current_path + "/data/films_2.txt"

if File.exist?(file_name)
  f = File.new(file_name)
  films = f.readlines
  f.close
  
  films_with_names   = films.each_slice(3).to_a.sample
  title, description = films_with_names[0], films_with_names[1]
else
  alert 'Список фильмов не найден'
end

puts "\nСегодня Вам предлагается к просмотру фильм:\n\n"
puts title, "\n", description, "\n"
