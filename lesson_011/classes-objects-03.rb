require './person.rb'

man1 = Person.new('Гаврила', 'Петрович',41)
man2 = Person.new('Фёдор', 'Петрович',61)

puts 'У нас есть два человека:'
man1.displaying_full_name
man2.displaying_full_name

# Сергей
# И ему 41 — молодой
# Константин Львович
# И ему 61 — пожилой
