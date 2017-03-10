class Map

  attr_accessor :flat_map, :turns, :map

  def initialize
    @flat_map = [" "," "," "," "," "," "," "," "," "]
    @game_map = print_map
    refresh_map
  end

  def refresh_map
    @row1 = [@flat_map[0], @flat_map[1], @flat_map[2]]
    @row2 = [@flat_map[3], @flat_map[4], @flat_map[5]]
    @row3 = [@flat_map[6], @flat_map[7], @flat_map[8]]
    @column1 = [@flat_map[0], @flat_map[3], @flat_map[6]]
    @column2 = [@flat_map[1], @flat_map[4], @flat_map[7]]
    @column3 = [@flat_map[2], @flat_map[5], @flat_map[8]]
    @diagonal1 = [@flat_map[0], @flat_map[4], @flat_map[8]]
    @diagonal2 = [@flat_map[2], @flat_map[4], @flat_map[6]]
  end


  def print_map
    puts "
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
    refresh_map
    if check_rows("x") == 'rows match'
      end_game("x")
    elsif check_rows("o") == 'rows match'
      end_game("o")
    elsif check_columns("x") == 'columns match'
      end_game("x")
    elsif check_columns("o") == 'columns match'
      end_game("o")
    elsif check_diagonals("x") == 'diagonal match'
      end_game("x")
    elsif check_diagonals("o") == 'diagonal match'
      end_game("o")
    elsif @flat_map.all? {|i| i == 'x' || i == 'o' }
      end_game("g")
    else
      return
    end
  end

  def check_rows(letter)
    if @row1 == [letter,letter,letter]
      return 'rows match'
    elsif @row2 == [letter,letter,letter]
      return 'rows match'
    elsif @row3 == [letter,letter,letter]
      return 'rows match'
    end
  end

  def check_columns(letter)
    if @column1 == [letter,letter,letter]
      return 'columns match'
    elsif @column2 == [letter,letter,letter]
      return 'columns match'
    elsif @column3 == [letter,letter,letter]
      return 'columns match'
    end
  end

  def check_diagonals(letter)
    if @diagonal1 == [letter,letter,letter]
      return 'diagonal match'
    elsif @diagonal2 == [letter,letter,letter]
      return 'diagonal match'
    end
  end

  def end_game(letter)
    if letter == 'g'
      p "it's a draw!"
    else
      p "#{letter.upcase} HAS WON THE GAME!"
    end
    # @flat_map = [" "," "," "," "," "," "," "," "," "]
    # p 'map has been reset'
  end


end
