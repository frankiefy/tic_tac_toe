class Map

  attr_accessor :flat_map, :turns, :map

  def initialize
    @flat_map = [0,1,2,3,4,5,6,7,8]
    @game_map = print_map
    set_up_map_relations
  end

  def set_up_map_relations
    @top_left = @flat_map[0]
    @top_middle = @flat_map[1]
    @top_right = @flat_map[2]

    @row1 = [@top_left, @top_middle, @top_right]
    # row2 = [@flat_map[3], @flat_map[4], @flat_map[5]]
    # row3 = [@flat_map[6], @flat_map[7], @flat_map[8]]

    @rows = [@row1]
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
    raise 'this space is already taken' if @flat_map[position] == 'x' || @flat_map[position] == 'o'
    @flat_map[position] = letter
    check_for_winner
  end

  def check_for_winner
    set_up_map_relations
    if check_rows("x") == true
      return 'X wins!'
    elsif check_rows("o") == true
      puts 'O wins!'
    else
      p 'continue'
    end
  end

  def check_rows(letter)
    if @rows == ["x","x","x"]
      p 'rows match'
    else
      p 'continue2'
    end
  end


end
