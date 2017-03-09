require './lib/player.rb'

describe Player do

  context 'initializes' do

    it 'initializes with x or o' do
      player_x = Player.new('x')
      player_o = Player.new('o')
      expect(player_x.name).to eq('x')
      expect(player_o.name).to eq('o')
    end

    it 'initializes with turn = true/false for x/o' do
      player_x = Player.new('x')
      player_o = Player.new('o')
      expect(player_x.turn).to eq(true)
      expect(player_o.turn).to eq(false)
    end

  end

  context '#switch turns' do

    it 'turns switch' do
      player_x = Player.new('x')
      player_x.switch_turns
      expect(player_x.turn).to eq(false)
    end
  end

end
