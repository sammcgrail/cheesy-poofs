require "rspec"
require_relative "../lib/Ingredient"


RSpec.describe Ingredient do
let(:ingredient) {Ingredient.new("Brussels Sprout", 20)}
  describe "#initialize" do
    it "takes a value for name and weight in grams" do
      expect(ingredient.name).to eq("Brussels Sprout")
      expect(ingredient.weight).to eq(20 * 453.592)
    end
  end
end
