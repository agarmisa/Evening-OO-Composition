
require "rspec"
require_relative "../../lib/code"

describe Ingredient do
  let(:brussels_sprouts) do
    name = "Brussels Sprouts"
    weight = 0.02
    Ingredient.new(name, weight)
  end

  describe '#initialization' do
    it 'creates a new ingredient object' do
      expect(brussels_sprouts).to be_a(Ingredient)
    end
    it 'reads back the name' do
      expect(brussels_sprouts.name).to eq("Brussels Sprouts")
    end
  end
end

describe Container do
  let(:brussels_sprouts) do
    name = "Brussels Sprouts"
    weight = 0.02
    Ingredient.new(name, weight)
  end
  let(:container_bs) do
    name = brussels_sprouts
    Container.new(name)
  end

  describe '#initialization' do
    it 'creates a new container object' do
      expect(container_bs).to be_a(Container)
    end
    it 'reads back the ingredient' do
      expect(container_bs.ingredient_type).to eq(brussels_sprouts)
    end
    it 'gives the total weight of container including item' do
      expect(container_bs.single_box_weight).to eq(230)
    end
    it 'gives the weight of the ingredient' do
      expect(container_bs.ingredient_weight).to eq(140)
    end

  end
end


describe Airplane do
  let(:concorde_small) do
    capacity = 9000
    cargo_weight = 2200
    Airplane.new(capacity, cargo_weight)
  end

  describe '#initialization' do
    it 'creates a new airplane object' do
      expect(concorde_small).to be_a(Airplane)
    end
  end
  describe '#cap_remaining' do
    it 'calculates the available weight on the plane' do
      expect(concorde_small.cap_remaining).to eq(2400)
    end
  end
  describe '#brussels_boxes_coming' do
    it 'calculates how many boxes of brussels are coming' do
      expect(concorde_small.brussels_boxes_coming).to eq(10)
    end
  end
  describe "#brussels_without_boxes" do
    it 'tells us the weight of brussels coming without boxes' do
       expect(concorde_small.brussels_without_boxes).to eq(1400)
     end
   end
end
