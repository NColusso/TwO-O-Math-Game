class Question
  attr_accessor :answer, :player_answer

  def ask_question(currentplayer)
    @currentplayer = currentplayer
    # puts "#{currentplayer}"
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "#{@currentplayer.name}! What does #{@num1} plus #{@num2} equal?"
    @answer = (@num1 + @num2).to_s
    @player_answer = gets.chomp
  end
end