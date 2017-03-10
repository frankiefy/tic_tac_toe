require './lib/game.rb'

describe Game do

  context 'initializes' do

    it 'initializes with a new map' do
      expect(subject.game_map.flat_map).to eq([0,1,2,3,4,5,6,7,8])
    end

    it 'initializes with a new map' do
      expect(subject.game_map).to be_a(Map)
    end

  end

  context '#take_turn' do

    it 'player_x goes first' do
      subject.take_turn('x',4)
      expect(subject.game_map.flat_map).to eq([0,1,2,3,'x',5,6,7,8])
    end

    it 'player_o does not go first' do
      expect { subject.take_turn('o',4) }.to raise_error('its not your turn')
    end

    it 'player_o goes second' do
      subject.take_turn('x',4)
      subject.take_turn('o',3)
      expect(subject.game_map.flat_map).to eq([0,1,2,'o','x',5,6,7,8])
    end

    it 'player_x does not go second' do
      subject.take_turn('x',4)
      expect { subject.take_turn('x',4) }.to raise_error('its not your turn')
    end

  end

  context 'winning' do

    it 'announces when a player has won' do
      subject.game_map.flat_map = ['x','x',2,3,4,5,6,7,8]
      expect(subject.take_turn('x',2)).to eq('X wins!')
    end
  end

end
