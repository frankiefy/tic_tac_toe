require './lib/map.rb'
require './lib/player.rb'
require './lib/game.rb'
test_game = Game.new
test_game.take_turn('x', 0)
test_game.take_turn('o', 8)
test_game.take_turn('x', 1)
test_game.take_turn('o', 7)
test_game.take_turn('x', 2)
# test_game.take_turn('o', 5)
