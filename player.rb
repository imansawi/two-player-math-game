class Player
  attr_accessor :name, :lives, :turn

  def initialize(name)
    @name = name
    @lives = 3
    @turn = true
  end
 
  def lives_count(win)
    if !win
      self.lives -= 1
    end
  end

end