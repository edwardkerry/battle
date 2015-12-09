class Game

# WORK OUT HOW TO USE FORWARDABLE AT SOME POINT INSTEAD OF THE NAME METHODS.

  attr_reader :player1, :player2, :whos_go

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @whos_go = player1
  end

  def hug(player)
    player.reduce_hug_points
  end

  def player1_name
    player1.name
  end

  def player2_name
    player2.name
  end

  def player2_hug_points
    @player2.hug_points
  end

  def switch_turns
    if whos_go == player1
      @whos_go = player2
    else
      @whos_go = player1
    end
  end

  def player_whos_turn
    whos_go.name.upcase
  end

end
