class Person
  def initialize(name = 'no name', patronymic = 'no patronymic', age = nil)
    @name = name
    @patronymic = patronymic
    @age = age
  end

  def displaying_full_name
    if old?
      puts "#{@name} #{@patronymic}"
      puts "И ему #{@age} — пожилой"
    else
      puts "#{@name}"
      puts "И ему #{@age} — молодой"
    end
  end

  def old?
    return @age.nil? || @age > 60
    # if @age.nil? || @age > 60
    #   true
    # else
    #   false
    # end
  end
end
