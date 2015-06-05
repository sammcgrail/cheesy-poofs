require_relative 'Ingredient'
require 'pry'
class Container
  attr_reader :type, :container_weight, :capacity, :content_weight, :ingredient
  def initialize(ingredient, container_weight, capacity)
    @ingredient = ingredient
    @type = ingredient.name
    @container_weight = container_weight
    @capacity = capacity
    # @content_weight = 0
    # @contained_ingredients = []
  end

  def ingredient_capacity
    (@capacity / @ingredient.weight).to_i
  end

  def full_container_weight
    @container_weight + @capacity
  end
  # def container_container_full?
  #   @content_weight >= @capacity
  # end

  # def container_fill
  #   ingredient_weight = 0.0
  #   if @type == "Brussels Sprout"
  #     ingredient_name = "Brussels Sprout"
  #     ingredient_weight = 0.04
  #   else
  #     ingredient_name = "Cheesy Poofs"
  #     ingredient_weight = 0.002
  #   end
  #   until container_full?
  #     unless (@content_weight + ingredient_weight) > @capacity
  #       @contained_ingredients << Ingredient.new(ingredient_name, ingredient_weight)
  #       @content_weight += ingredient_weight
  #     end
  #   end
  # end
end

# container = Container.new("Cheesy Poofs", 50, 20)
# puts container.container_full?
# puts container.content_weight
#
# container.container_fill
# puts container.container_full?
# puts container.content_weight
#
# container2 = Container.new("Brussels Sprout", 200, 300)
# puts container2.container_full?
# puts container2.content_weight
#
# container2.container_fill
# puts container2.container_full?
# puts container2.content_weight

# brussels_sprout = Ingredient.new("Brussels Sprout", 20)
# cheesy_poof = Ingredient.new("Cheesy Poof", 0.5)
# container_poofs = Container.new(cheesy_poof, 50, 20)
# container_sprouts = Container.new(brussels_sprout, 200, 300)
# # airplane = Airplane.new("Concorde", 20000)
# # required_ingredient = Ingredient.new("")
#
# puts container_poofs.type
# container_capacity = container_poofs.ingredient_capacity
#
#
#
# # math for questions
# cheesy_poofs = 5000 / cheesy_poof.weight
# puts cheesy_poofs
# puts "________"
# number_of_containers = (cheesy_poofs / container_capacity).to_i + 1
# puts number_of_containers
# puts "________"
# cheesy_weight = number_of_containers * container_poofs.container_weight
# puts cheesy_weight
# puts "________"
# full_containers =  (20000 - cheesy_weight) / container_sprouts.full_container_weight
# remainder = ((20000 - cheesy_weight) % container_sprouts.full_container_weight) - container_sprouts.container_weight
# extra_sprouts = (remainder/brussels_sprout.weight).to_i
# total_sprouts = (container_sprouts.ingredient_capacity * full_containers) + extra_sprouts
#
# puts total_sprouts
