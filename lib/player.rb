class Player

  attr_reader :name, :hug_points

  def initialize(name)
    @name = name
    @hug_points = 150
  end

  def reduce_hug_points
    @hug_points -= 20
  end

end
