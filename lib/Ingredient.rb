class Ingredient
  attr_reader :name, :weight
  def initialize(name, weight_in_grams)
    @name = name
    @weight = weight_in_grams * 453.592
  end

end
