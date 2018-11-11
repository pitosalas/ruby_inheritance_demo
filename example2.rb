require 'pry-byebug'

# Represent game characters that can move: People and Cars
# Using inheritance
class Character
  attr_reader :location, :velocity, :type
  def initialize(args)
    @velocity = args[:starting_v]
  end
end

class Car < Character
  attr_reader :passengers

  def initialize(args)
    @passengers = 4
    super
  end

  def to_s
    "[car p=#{@passengers}, v=#{@velocity}]"
  end
end

class Person < Character
  def initialize(args)
    super(args)
  end

  def to_s
    "[Person v=#{@velocity}]"
  end
end

p = Person.new(starting_v: 0)
c = Car.new(starting_v: 0)

puts p
puts c
