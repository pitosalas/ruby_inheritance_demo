class Character
  attr_reader :location, :velocity
  def initialize(features)
    @features = features
    @velocity = @features.starting_v
    @speed_increment = @features.speed_increment
  end

  def faster
    @velocity += @speed_increment
  end

  def passengers
    @features.passengers
  end

  def to_s
    @features.to_s(self)
  end
end

class CarFeatures
  def speed_increment
    15
  end

  def starting_v
    0
  end

  def passengers
    4
  end

  def to_s(char)
    "[Car] s: #{char.velocity}, p: #{char.passengers}"
  end
end

class PersonFeatures
  def speed_increment
    3
  end

  def starting_v
    0
  end

  def passengers
    error "People don't have passengers!"
  end

  def to_s(char)
    "[Person] s: #{char.velocity}"
  end
end

p = Character.new(PersonFeatures.new)
c = Character.new(CarFeatures.new)

puts p
puts c

p.faster
c.faster

puts p
puts c

