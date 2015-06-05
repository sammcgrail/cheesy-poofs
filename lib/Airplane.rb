require_relative 'Container'
require_relative 'Ingredient'
require 'pry'
class Airplane
  attr_reader :type, :weight_capacity, :current_weight, :required_ingredient, :required_weight, :remaining_capacity
  def initialize(type, weight_capacity, required_ingredient_container = nil, required_weight = 0)
    @type = type
    @weight_capacity = weight_capacity
    @required_ingredient_container = required_ingredient_container
    @required_ingredient = required_ingredient_container.ingredient
    @required_weight = required_weight
    @remaining_capacity = weight_capacity
  end

  def total_required_ingredients
    @required_weight / @required_ingredient.weight
  end

  def total_required_containers
    (total_required_ingredients / @required_ingredient_container.ingredient_capacity).to_i + 1
  end

  def total_required_weight
    (total_required_containers * @required_ingredient_container.container_weight) + @required_weight
  end

  def loader
    @remaining_capacity -= total_required_weight
  end
end

## TESTING
cheesy_poof = Ingredient.new("Cheesy Poof", 0.5)
brussels_sprout = Ingredient.new("Brussels Sprout", 20)
container_poofs = Container.new(cheesy_poof, 50, 20)
container_sprouts = Container.new(brussels_sprout, 200, 300)
airplane = Airplane.new("Concorde", 20000, container_poofs, 4975)

#Determine how many full_containers of brussles sprouts can fit in plane
remaining_weight = airplane.weight_capacity - airplane.total_required_weight
full_containers = (airplane.weight_capacity - airplane.total_required_weight) / container_sprouts.full_container_weight
puts "How many full containers of sprouts can go on"
puts full_containers

#Determine the remainder weight if there is enough space for another container
remainder = 0
if (remaining_weight % container_sprouts.full_container_weight) > container_sprouts.container_weight
remainder = (remaining_weight % container_sprouts.full_container_weight) - container_sprouts.container_weight
end

puts "Remaining weight after full containers minus the weight of the last non full container"
puts remainder

#Determine number of extra sprouts that can be added based on remainder weight
extra_sprouts = (remainder/brussels_sprout.weight).to_i
puts "Number of extra sprouts in last container (if space)"
puts extra_sprouts

#Combine full container sprouts with extra sprouts for total_sprouts
total_sprouts = (container_sprouts.ingredient_capacity * full_containers) + extra_sprouts
puts "total number of possible sprouts"
puts total_sprouts
puts"_______________________"
# puts "Airplane type:"
# puts airplane.type
#
# puts airplane.remaining_capacity
# puts airplane.total_required_weight
# airplane.loader
# puts airplane.remaining_capacity

## TEST OTHER QUESTION
#
# airplane2 = Airplane.new("Concorde", 20000, container_poofs, 1000)
#
# puts "Airplane type:"
# puts airplane2.type
#
# puts airplane2.remaining_capacity
# puts airplane2.total_required_weight
# airplane2.loader
# puts airplane2.remaining_capacity
#
# ## TEST OTHER HYPOTHETICAL
#
# airplane3 = Airplane.new("Boeing", 30000, container_poofs, 5000)
#
# puts "Airplane type:"
# puts airplane3.type
#
# puts airplane3.remaining_capacity
# puts airplane3.total_required_weight
# airplane3.loader
# puts airplane3.remaining_capacity
