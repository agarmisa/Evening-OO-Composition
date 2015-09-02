class Airplane
  attr_reader :capacity, :cargo_weight, :container
  def initialize(capacity, cargo_weight=0)
    @capacity = capacity
    @cargo_weight = cargo_weight
    @container = Container.new(Ingredient.new("Cheesy Poofs", 0.0005))
  end

  def cap_remaining
    capacity - container.total_weight(cargo_weight)
  end

  def brussels_boxes_coming
    cap_remaining / 230
  end

  def brussels_without_boxes
    brussels_boxes_coming*140
  end

  def print
    puts "Brussels Sprout: #{brussels_without_boxes} kg in #{brussels_boxes_coming} containers"
  end

end
