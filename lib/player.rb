require 'pry'
class Player

  DEFAULT_HUG_POINTS = 150

  attr_reader :name, :hug_points, :game, :computer

  def initialize(name)
    @name = name
    @hug_points = DEFAULT_HUG_POINTS
    @computer = false
  end

  def reduce_hug_points
    @hug_points -= Kernel.rand(60)
  end

end
