class Player
  attr_reader :name
  attr_accessor :lives_remaining

  def initialize(name)
    @name = name
    @lives_remaining = 3
  end

  def no_life?
    @lives_remaining == 0
  end

  def lose_life
    @lives_remaining -= 1
  end
end