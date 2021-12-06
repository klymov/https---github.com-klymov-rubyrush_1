# Подключаем библиотеку для работы с протоколом HTTP. Позже в курсе вы узнаете
# о нем подробнее.
# Для работы на Ruby версии 3.0 и выше необходимо доставить gem addressable
# и подключить его, т.к. net/http в Ruby версии 3.0 и выше не поддерживает метод encode
require 'net/http'
#require 'addressable/uri'

def get_random_regexp_strig
  patterns = ['торф', 'скат', 'свал', 'крик', 'спир']
  pattern = patterns.sample
  letter = pattern.split('').sample
  pattern.gsub(letter, '.')
end

def word_exists?(word)
  url = "https://ru.wiktionary.org/wiki/#{word}"
  # uri = "https://ru.wiktionary.org/wiki/" + URI.encode_www_form_component(word)
  wiktionary_page = Net::HTTP.get(URI.parse(URI.encode(url))).force_encoding('UTF-8')

  if wiktionary_page =~ /В настоящий момент текст на данной странице отсутствует/
    false
  else
    true
  end
end
