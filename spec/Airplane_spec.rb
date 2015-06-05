require "rspec"
require_relative "../lib/Airplane"


RSpec.describe Airplane do
let(:airplane) {Airplane.new("Concorde", 20000)}
  describe "#initialize" do
    it "takes a value for name and weight capacity in pounds" do
      expect(airplane.type).to eq("Concorde")
      expect(airplane.weight_capacity).to eq(20000)
    end
  end
end
