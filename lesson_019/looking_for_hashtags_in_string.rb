print "Введите строку с хэштегами:\n> "
words = STDIN.gets.chomp#.split(" ")

print 'Нашли вот такие хэштеги: '
hashtags = ''

words.split(" ").each { |word| hashtags += "#{word}, " if word =~ /^\#/ }

print "#{hashtags.chomp(', ')}\n"


hashtag_regexp = /#[[:word:]-]+/
# https://ruby-doc.org/core-2.4.0/String.html#method-i-scan
hashtags_2_ver = words.scan(hashtag_regexp)
puts
puts 'Нашли вот такие хэштеги: ' + hashtags_2_ver.join(', ')
