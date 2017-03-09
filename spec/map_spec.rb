require './lib/map.rb'

describe Map do

  context 'initializes' do

    it 'initializes with a flat_map array' do
      expect(subject.flat_map).to eq([0,1,2,3,4,5,6,7,8])
    end

  end

  context 'the map' do

    it 'can print the map' do
      expect(subject.print_map).to eq("\n    0|1|2\n    _____\n    3|4|5\n    _____\n    6|7|8\n    ")
    end

    it 'can add_to_map' do
      subject.add_to_map('x',0)
      expect(subject.flat_map).to eq(['x',1,2,3,4,5,6,7,8])
    end

    it 'wont add_to_map if space is already taken' do
      subject.add_to_map('x',0)
      expect { subject.add_to_map('o',0) }.to raise_error('this space is already taken')     
    end

  end
end
