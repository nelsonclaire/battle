require_relative './player.rb'

class Game

attr_reader :current_turn

 def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
      player.damage
  end

  def opponent_of(player)
    players_who_are_not(player).first
  end
  
  def switch_turns
    @current_turn = opponent_of(current_turn)
  end
  
  private
  attr_reader :players

  def players_who_are_not(the_player)
    players.select { |player| player != the_player }
  end

end