require 'pry-byebug'

# Represent game characters that can move: People and Cars
# Still with inheritance
# Now we add a method, speed_increment which we expect all characters to implement

class Character
  attr_reader :location, :velocity, :type

  def initialize(args)
    @velocity = args[:starting_v]
  end

  def faster
    @velocity += speed_increment
  end

  def speed_increment
    raise "Subclass of Character should define speed_increment"
  end
end

class Car < Character
  attr_reader :passengers

  def initialize(args)
    @passengers = 4
    super
  end

  def speed_increment
    15
  end

  def to_s
    "[car with p=#{@passengers}, v=#{@velocity}]"
  end
end

class Person < Character
  def initialize(args)
    super(args)
  end

  def to_s
    "[Person v=#{@velocity}]"
  end

  def speed_increment
    3
  end
end

p = Person.new(starting_v: 0)
c = Car.new(starting_v: 0)

puts p
puts c

p.faster
c.faster

puts p
puts c
