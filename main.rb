require './player.rb'
require './question.rb'
require './turn.rb'

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')
turn = Turn.new()

while p1.lives > 0 && p2.lives > 0
  q = Question.new()
  turn.newTurn(p1, q)
  turn.getLives(p1, p2)
  p1.lives -= 1
end