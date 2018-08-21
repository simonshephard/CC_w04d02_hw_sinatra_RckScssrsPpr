class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def compare
    return "DRAW! #{@player1.capitalize} matches #{@player2.capitalize}!" if @player1 == @player2
    return "PLAYER 1 wins! Rock blunts scissors!" if @player1 == "rock" && @player2 == "scissors"
    return "COMPUTER wins! Rock blunts scissors!" if @player1 == "scissors" && @player2 == "rock"
    return "PLAYER 1 wins! Scissors cuts paper!" if @player1 == "scissors" && @player2 == "paper"
    return "COMPUTER wins! Scissors cuts paper!" if @player1 == "paper" && @player2 == "scissors"
    return "PLAYER 1 wins! Paper covers rock!" if @player1 == "paper" && @player2 == "rock"
    return "COMPUTER wins! Paper covers rock!" if @player1 == "rock" && @player2 == "paper"
  end


end
