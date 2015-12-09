class Player

  DEFAULT_HUG_POINTS = 150


  attr_reader :name, :hug_points

  def initialize(name)
    @name = name
    @hug_points = DEFAULT_HUG_POINTS
  end

  def reduce_hug_points
    @hug_points -= 20
  end

  def hug(player)
    player.reduce_hug_points
  end
end
