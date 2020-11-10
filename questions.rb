class Question

  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2
  end

  def get_question(name)
    puts "#{name}, what does #{@num1} plus #{@num2} equal?"
    # print ">"
    # response = gets.chomp.to_i

    # moving this into game.rb logic 
    # if response != @answer
    #   puts "Seriously? No! You lose a point"
    # else
    #   puts "YES! You are correct. You get a point"
    # end

  end

  def answer_check?(input)
    @answer == input
  end

end

# test = Question.new
# test.get_question("player1")
# test.get_answer
