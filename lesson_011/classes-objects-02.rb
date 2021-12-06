require './person.rb'

man1 = Person.new('Гаврила', 'Петрович')
man2 = Person.new('Фёдор', 'Петрович')
man3 = Person.new('Василий', 'Алибабаевич')

# У нас есть три человека:
# Гаврила Петрович
# Фёдор Петрович
# Василий Алибабаевич

puts 'У нас есть три человека:'
man1.displaying_full_name
man2.displaying_full_name
man3.displaying_full_name
