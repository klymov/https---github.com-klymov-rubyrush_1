def print_stars(count_stars)
  # 1й вариант
  puts 'Вот ваши звезды :)'
  print ('*' * count_stars) + "\n"

  # 2й вариант
  result_string = ''
  while result_string.length < count_stars
    result_string += '*'
  end
  puts result_string
end

print "Сколько вам звезд на погоны?\n> "
count_stars = gets.to_i
print_stars(count_stars)
