while true do
  # Выводим текущее время, используя возможности объектов типа Time в руби
  print "\r" + Time.now.strftime('%H:%M:%S')

  # Ждем 1 секунду
  sleep 1
end
