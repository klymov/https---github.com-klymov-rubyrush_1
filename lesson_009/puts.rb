a = puts "Я puts, я не хочу ничего возвращать, я хочу просто печатать"
puts a

puts [1,2,3].is_a?(Array)
puts "Строка".is_a?(String)
puts 28.is_a?(Numeric)

puts (1..3).map do |i|
  i
end

def twice
  yield "и раз"
  yield "и два"
end

twice { |words| puts "!!! " + words }    #=> !!! и раз
                                         #=> !!! и два
