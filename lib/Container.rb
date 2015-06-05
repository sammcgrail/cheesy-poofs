class Container
  attr_reader :type, :container_weight, :capacity
  def initialize(type, container_weight, capacity)
    @type = type
    @container_weight = container_weight
    @capacity = capacity
    @content_weight = 0
    @contained_ingredients = []
  end

  def full?
    @content_weight >= @capacity
  end

  def fill
    ingredient_weight = 0
    if @name == "Brussels Sprout"
      ingredient_weight = 20
    else
      ingredient_weight = 0.5
    end
    until full?
      ingredient = (Ingredient.new(@type, ingredient_weight))
        unless (@content_weight + ingredient.weight) > @capacity
          @contained_ingredients << ingredient
      end
    end
  end
end
