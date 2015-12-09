class Game

# WORK OUT HOW TO USE FORWARDABLE AT SOME POINT INSTEAD OF THE NAME METHODS.

  attr_reader :player1, :player2, :whos_go, :not_whos_go

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @whos_go = player1
    @not_whos_go = player2
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

  def player1_hug_points
    @player1.hug_points
  end

  def player2_hug_points
    @player2.hug_points
  end

  def switch_turns
    if whos_go == player1
      @whos_go = player2
      @not_whos_go = player1
    else
      @whos_go = player1
      @not_whos_go = player2

    end
  end

  def player_whos_turn
    whos_go.name
  end

  def player_not_whos_turn
    not_whos_go.name
  end

  def player_whos_turn_hug_points
    whos_go.hug_points
  end

end
