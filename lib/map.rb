class Map

  attr_accessor :flat_map, :turns, :map

  def initialize
    @flat_map = [0,1,2,3,4,5,6,7,8]
    @game_map = print_map
  end


  def print_map
    return "
    #{@flat_map[0]}|#{@flat_map[1]}|#{@flat_map[2]}
    _____
    #{@flat_map[3]}|#{@flat_map[4]}|#{@flat_map[5]}
    _____
    #{@flat_map[6]}|#{@flat_map[7]}|#{@flat_map[8]}
    "
  end

  def add_to_map(letter, position)
    @flat_map[position] = letter
  end



end
