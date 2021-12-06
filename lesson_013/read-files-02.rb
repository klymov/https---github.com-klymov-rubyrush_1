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

@face.each { |element| puts element }
