# Напишите программу, которая читает текст из файла и считает количество слов из трех букв.

text = File.read('./data/text.txt')

three_tetters = /\b[A-яа-я]{3}\b/
words = text.scan(three_tetters)
puts words.count

# cleaned_text = text.gsub(/[,\(\)\.\-;:\?\!]/, '')
# words = cleaned_text.split
# puts words.count { |w| w =~ /^\S{3}$/ }