class Game

# WORK OUT HOW TO USE FORWARDABLE AT SOME POINT INSTEAD OF THE NAME METHODS.

  attr_reader :player1, :player2, :whos_go, :the_other_player, :attach

  def initialize(player1, player2, attach)
    @player1 = player1
    @player2 = player2
    @whos_go = player1
    @the_other_player = player2
    @attach = attach
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
      @the_other_player = player1
    else
      @whos_go = player1
      @the_other_player = player2
    end
  end

  def game_over?
    return true if player1_hug_points <= 0
    return true if player2_hug_points <= 0
    false
  end



end
