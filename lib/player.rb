require 'pry'
class Player

  DEFAULT_HUG_POINTS = 150

  attr_reader :name, :hug_points, :game

  def initialize(name)
    @name = name
    @hug_points = DEFAULT_HUG_POINTS
  end

  def reduce_hug_points
    @hug_points -= Kernel.rand(20)
  end

end
