class Player

  attr_reader :name, :turn

  def initialize(name)
    @name = name
    @turn = start_turn_decider(name)
  end

  def start_turn_decider(name)
    if name == 'x'
      return true
    else
      false
    end
  end

  def switch_turns
    @turn = !@turn
  end

end
