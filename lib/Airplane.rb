class Airplane
  attr_reader :type, :weight_capacity, :current_weight
  def initialize(type, weight_capacity)
    @type = type
    @weight_capacity = weight_capacity
    @current_weight = 0
  end

  def full?
    @current_weight >= @weight_capacity
  end

  def fill
    container_weight = 0.0
    if @
  end


## TESTING
airplane = Airplane.new("Concorde", 20000)

puts airplane.weight_capacity
puts airplane.type
puts airplane
