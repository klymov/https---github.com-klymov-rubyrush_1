"Маша и Гоша" =~ /Гоша/ # true
"Маша и Гоша".index("Маша") # 0
"Маша и Гоша".include?("Маша") # 0
"scute" =~ /c.t/  # 1
"scute" =~ /^c.t/  # nil не сначала
"cute" =~ /^c.t$/  # nil не последняя
"cu вавва ваt" =~ /^c.*t$/  # 0 квантификатор *
"ct" =~ /c.+t/ # nil * это 0 и более
"ct" =~ /c.*t/ # 0   + это 1 и более
"983425687465928" =~ /^[0-9]*$/ # => 0 
"11www99@e.ua" =~ ^[\d\.a-z]+@[a-z0-9\.]+
# https://regex101.com/

"I have an old car".gsub(/an old/, 'a new') # => "I have a new car"
