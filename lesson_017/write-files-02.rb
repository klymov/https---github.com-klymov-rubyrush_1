current_path = File.dirname(__FILE__)
@file_path = current_path + '/data/'

@face = []
elements = ['foreheads', 'eyes', 'noses', 'mouths']

def add_face_element(element)
  if File.exist?(@file_path + element + '.txt')
    f = File.new(@file_path + element + '.txt')
    lines = f.readlines
    f.close
    @face << lines.sample
  else
    abort "#{element} не найден"
  end
end

elements.each { |element| add_face_element(element) }

time = Time.now
file_name = time.strftime("face_%Y-%m-%d_%H-%M.txt")
file = File.new(current_path + "/data/" + file_name, 'a')

@face.each { |element| file.puts(element) }
file.close

puts "Файл #{file_name} с мордашкой - записан!"
