class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def minus_point
    @lives -= 1
  end

  def alive? 
    @lives != 0
  end

  def lost?
    @lives == 0
  end

end
