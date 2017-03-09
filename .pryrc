require './lib/map.rb'
require './lib/player.rb'
require './lib/game.rb'
test_game = Game.new
test_game.take_turn('x', 0)
test_game.take_turn('o', 1)
test_game.take_turn('x', 2)
test_game.take_turn('o', 3)
test_game.take_turn('x', 4)
test_game.take_turn('o', 5)
test_game.take_turn('x', 6)
test_game.take_turn('o', 7)
test_game.take_turn('x', 8)
