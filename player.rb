class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

end

player1 = Player.new('Player 1')
# puts player1.name
# puts player1.lives