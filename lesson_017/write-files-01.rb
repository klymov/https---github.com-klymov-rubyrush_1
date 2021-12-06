current_path = File.dirname(__FILE__)

file = File.new(current_path + "/hello.txt", 'w')
file.print("Hello, file!")
file.close
