class Turn

  def getLives(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  end

  def newTurn(player, q)
    puts "----- NEW TURN -----"
    puts "#{player.name}: #{q.question}"
    input = gets.chomp.to_i
    if input == q.answer
      puts "#{player.name}: YES! You are correct."
    else
      puts "#{player.name}: Seriously? No!"
      # add code to remove a life here!
    end
  end

end