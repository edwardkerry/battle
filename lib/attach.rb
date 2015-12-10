class Attach

  def hug(player)
    player.reduce_hug_points(randomiser)
  end

  def bear_hug(player)
    player.reduce_hug_points(randomiser)
  end

  def squeeze(player)
    player.reduce_hug_points(randomiser)
  end

  def hover_hug(player)
    player.reduce_hug_points(randomiser)
  end

  def soothing_embrace(player)
    player.reduce_hug_points(randomiser)
  end

  def self_hug(player)
    player.reduce_hug_points(randomiser)
  end

  private

  def randomiser
    Kernel.rand(30)
  end

end
