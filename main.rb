require './player.rb'
require './question.rb'
require './turn.rb'

# initialization
p1 = Player.new('Player 1')
p2 = Player.new('Player 2')
turn = Turn.new()
current_player = p2

# main game loop
while p1.lives > 0 && p2.lives > 0
  if current_player == p2
    current_player = p1
  else
    current_player = p2
  end

  q = Question.new()
  turn.newTurn(current_player, q)
  turn.getLives(p1, p2)
end

