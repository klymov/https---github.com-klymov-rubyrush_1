class Person
  def initialize(name = 'no name', patronymic = 'no patronymic', age = nil, film = nil)
    @name = name
    @patronymic = patronymic
    @age = age
    @film = film
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

  def name
    @name
  end
  
  def add_movie_to_favorite(film = nil)
    @film = film
  end

  # Это сеттер
  # person = Person.new(...)
  # person.film = Film.new(...)
  def film=(film)
    @film = film
  end

  def film
    @film
  end
end
