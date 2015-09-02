class Container
  attr_reader :ingredient_type
  def initialize(ingredient_type)
    @ingredient_type = ingredient_type
  end

  def single_box_weight
    if ingredient_type.name == 'Cheesy Poofs'
      30
    elsif ingredient_type.name == 'Brussels Sprouts'
      230
    end
  end

  def ingredient_weight
    if ingredient_type.name == 'Cheesy Poofs'
      10
    elsif ingredient_type.name == 'Brussels Sprouts'
      140
    end
  end

  def how_many_boxes(cargo_weight)
    cargo_weight / ingredient_weight
  end

  def total_weight(cargo_weight)
    how_many_boxes(cargo_weight) * single_box_weight
  end


end
