require "./players"
require "./questions"

class Game 

  def initialize
    #every instance of this game will start off with two players
    #Player class takes in a name argument (we're calling them Player 1 and Player 2 for now)
    @player_one = Player.new("Player 1")
    @player_two = Player.new("Player 2")
    @current_player = @player_one

    #each player instance comes with a set of 3 lives
  end

  def play

    while @player_one.alive? && @player_two.alive?
      # create a new question instance
      turn = Question.new
      puts turn.get_question(@current_player.name)
      print ">"
      response = gets.chomp.to_i

      if turn.answer_check?(response)
        puts "YES! You are correct."
      else
        puts "Seriously? No! You lose a point"
        @current_player.minus_point
      end

      puts "#{@player_one.name}: #{@player_one.lives}/3 vs #{@player_two.name}: #{@player_two.lives}/3"

      if @current_player == @player_one
        @current_player = @player_two
      else 
        @current_player = @player_one
      end

      puts "-------NEW TURN-------"
    end
    
    if @player_one.lost?
      puts "#{@player_two.name} wins with a score of #{@player_two.lives}/3"
    elsif @player_two.lost?
      puts "#{@player_one.name} wins with a score of #{@player_one.lives}/3"
    end

    puts "-------GAME OVER-------"
    puts "Good bye!"
  end 

end 


