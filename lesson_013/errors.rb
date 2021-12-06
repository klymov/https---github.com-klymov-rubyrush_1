current_path = File.dirname(__FILE__)
file_path = current_path + '/data/'

# $stdin = File.open(file_path + 'входные данные.txt')
# $stdout = File.open(file_path + 'выходные данные.txt', 'w') # заменяется
# $stderr = File.open(file_path + 'сообщения об ошибках.txt', 'a') # дописывается

# puts 'Очень важные данные,'
# puts 'которые будут сохранены в файл'
# raise 'Принудительно вызываем ошибку' + $stdin.to_s

string = File.open(file_path + 'входные данные.txt'){ |file| file.read }
File.open(file_path + 'выходные данные.txt', 'w'){ |file| file.write string }
File.open(file_path + 'выходные данные.txt', 'a'){ |file| file.puts  string }


# Mode	Description
# r	Read only access. Pointer is positioned at start of file.
# r+	Read and write access. Pointer is positioned at start of file.
# w	Write only access. Pointer is positioned at start of file.
# w+	Read and write access. Pointer is positioned at start of file.
# a	Write only access. Pointer is positioned at end of file.
# a+	Read and write access. Pointer is positioned at end of file.
# b	Binary File Mode. Used in conjunction with the above modes. Windows/DOS only.
# With this information in mind we can, therefore, create a new file in "write" mode as follows:

# File.new("temp.txt", "w")
file = File.open("temp.txt")
file = File.open("temp.txt", "r")
file.closed?
file = File.open("temp.txt", "r")
File.new("tempfile.txt", "w")
File.rename("tempfile.txt", "newfile.txt")
File.delete("newfile.txt")
File.exists? ("Temp.txt") 
File.file? ("Ruby") 
File.directory?("ruby ") 
File.readable? ("Temp.txt") 
File.writable? ("Temp.txt") 
File.executable? ("Temp.txt") 
File.size ("temp.txt") 
File.zero?("temp.txt")

File.ftype("temp.txt")
# => "file"
File.ftype("../ruby")
# => "directory"
File.ftype("/dev/sda5")
# => "blockSpecial"
File.ctime ("temp.txt") 
# => Чт, 29 ноября, 10:51:18 EST 2007 
File.mtime ("temp.txt") 
# => Thu Nov 29 11:14:18 EST 2007 
File.atime ("temp .txt ") 
# => Чт, 29 ноября, 11:14:19 EST 2007

myfile = File.open ("temp.txt") 
# => # <File: temp.txt> 
myfile.readline 
# => "Это тестовый файл \ n" 
myfile.each {|line| print line }
myfile.getc.chr
# => "H"

myfile = File.new ("write.txt", "w +") # открыть файл для чтения и записи 
# => # <File: write.txt> 
myfile.puts ("This test line 1") # написать строку 
# => nil 
myfile.puts ("Эта тестовая строка 2") # написать вторую строку 
# => nil 
myfile.rewind # переместить указатель обратно в начало файла 
# => 0 
myfile.readline 
# => "Эта тестовая строка 1 \ n" 
myfile.readline 
# => "Эта тестовая строка 2 \ n"
