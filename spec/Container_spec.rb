require "rspec"
require_relative "../lib/Container"


RSpec.describe Container do
let(:container) {Container.new("Cheesy Poofs", 50)}
  describe "#initialize" do
    it "takes a container type and container weight" do
      expect(container.type).to eq("Cheesy Poofs")
      expect(container.weight).to eq(50)
    end
  end
end
