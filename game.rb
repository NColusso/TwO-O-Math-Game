class Game
  attr_accessor :game_on
  attr_accessor :currentplayer 
  
  def new_game(player1, player2)
    @game_on = true

    @player1 = Player.new(player1)
    @player2 = Player.new(player2)

    @currentplayer = @player1

  end
  
  def ask_question

    question = Question.new
    question.ask_question(@currentplayer)

    if question.answer == question.player_answer
      puts "YES! You got it right!"

    else
      puts "Nice try!"
      @currentplayer.lives -= 1
    end

    if @player1.lives == 0

      puts "#{@player2.name} wins with a score of #{@player2.lives}/3!"
      @game_on = false

    elsif @player2.lives == 0

      puts "#{@player1.name} wins with a score of #{@player1.lives}/3!"
      @game_on = false

    else
      
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      @currentplayer == @player1 ? @currentplayer = @player2 : @currentplayer = @player1
    end

  end

  
end