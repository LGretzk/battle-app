require_relative 'player'

class Game
 
  attr_reader :p1, :p2, :current_turn

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_turn = p1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn == p1 ? @current_turn = p2 : @current_turn = p1
  end

end