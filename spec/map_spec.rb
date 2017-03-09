require './lib/map.rb'

describe Map do

  context 'initializes' do

    it 'initializes with a flat_map array' do
      expect(subject.flat_map).to eq([0,1,2,3,4,5,6,7,8])
    end

    it 'initializes with number of X & O on map' do
      expect(subject.turns).to eq(0)
    end

  end

  context 'the map' do

    it 'can print the map' do
      expect(subject.print_map).to eq("\n    0|1|2\n    _____\n    3|4|5\n    _____\n    6|7|8\n    ")
    end

  end
end
