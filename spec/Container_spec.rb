require "rspec"
require_relative "../lib/Container"


RSpec.describe Container do
let(:container) {Container.new("Cheesy Poofs", 50, 20)}
  describe "#initialize" do
    it "takes a container type and container weight" do
      expect(container.type).to eq("Cheesy Poofs")
      expect(container.container_weight).to eq(50)
      expect(container.capacity).to eq(20)
    end
  end
end
