class Turn

  def getLives(player1, player2)
    border = "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    if player1.lives > 0 && player2.lives > 0
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    elsif player1.lives <= 0
      puts border
      puts " #{player2.name} WINS with a score of #{player2.lives}/3"
      puts border
    elsif player2.lives <= 0
      puts border
      puts " #{player1.name} WINS with a score of #{player1.lives}/3"
      puts border
    end
  end

  def newTurn(player, q)
    puts "----- NEW TURN -----"
    puts "#{player.name}: #{q.question}"
    input = gets.chomp.to_i
    if input == q.answer
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      player.lives -= 1
    end
  end

  def swapPlayer(current, player1, player2)
    if current == player2
      current = player1
    else
      current = player2
    end

    return current
  end
end