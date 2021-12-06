require "translit"

print 'Введите фразу для транслитерации:
> '
str = STDIN.gets.chomp
puts Translit.convert(str, :english) + "\n\n"

print 'Введите фразу для обратной транслитерации:
>'
str = STDIN.gets.chomp
puts Translit.convert(str, :russian) + "\n\n"
