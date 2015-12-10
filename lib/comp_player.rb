class CompPlayer < Player

  DEFAULT_HUG_POINTS = 150

  attr_reader :name, :hug_points, :computer

  def initialize(name)
    @name = name
    @hug_points = DEFAULT_HUG_POINTS
    @computer = true
  end

end
