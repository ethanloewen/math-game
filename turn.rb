class Turn

  def getLives(player1, player2)
    if player1.lives > 0 && player2.lives > 0
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    elsif player1.lives <= 0
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
    elsif player2.lives <= 0
      puts "#{player1.name} wins with a score of #{player1.lives}/3"
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
end