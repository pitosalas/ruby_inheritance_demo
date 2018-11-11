require 'pry-byebug'

# Represent game characters that can move: People and Cars
# Using a @type variable (an immedaite smell!)
class Character
  attr_reader :location, :velocity, :type

  def initialize(args)
    @type = args[:type]
    @velocity = args[:starting_v]
  end

  def passengers
    if @type == :car
      4
    end
  end

  def to_s
    if @type == :person
      "[person]"
    elsif @type == :car
      "[car]"
    else
      error "Invalid type"
    end
  end
end

person = Character.new(type: :person, starting_v: 0)
puts person

car = Character.new(type: :car, starting_v: 0)
puts car
puts car.passengers
