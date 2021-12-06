class Bodybuilder
  def initialize
    @biceps = 0
    @triceps = 0
    @deltoid = 0
  end

  def pump(muscle)
    @biceps += 1 if muscle == 'biceps'
    @triceps += 1 if muscle == 'triceps'
    @deltoid += 1 if muscle == 'deltoid'
  end

  def bodybuilder_status_output
    puts "biceps: #{@biceps}"
    puts "triceps: #{@triceps}"
    puts "deltoid: #{@deltoid}\n\n"
  end

  def workout
    rand(1..10).times do
      pump('biceps')
    end
    rand(1..10).times do
      pump('triceps')
    end
    rand(1..10).times do
      pump('deltoid')
    end
    bodybuilder_status_output
  end
end
