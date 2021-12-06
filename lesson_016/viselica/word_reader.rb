class WordReader

  def read_from_args
    return ARGV[0]
  end

  def read_from_file(file_name)
    begin
      f = File.new(file_name)
    # rescue Errno::ENOENT
    rescue SystemCallError
      abort 'Файл словами /data/words.txt - не найден!'
    else
      lines = f.readlines
      f.close
      lines.sample.chomp
    end
  end
  
end