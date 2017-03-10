class Game

  attr_reader :game_map, :player_x, :player_o

  def initialize
    @game_map = Map.new
    @player_x = Player.new('x')
    @player_o = Player.new('o')
  end

  def take_turn(player, position)
    fail 'its not your turn' if player == 'x' && @player_x.turn == false
    fail 'its not your turn' if player == 'o' && @player_o.turn == false
    @game_map.add_to_map(player, position)
    @player_x.switch_turns
    @player_o.switch_turns
    @game_map.print_map
  end


end
