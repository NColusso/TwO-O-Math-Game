require './player'
require './game'
require './question'



puts "Hello! Player 1, what's your name?"
  
name1 = gets.chomp

puts "Thanks, #{name1}! Player 2, what's your name?"

name2 = gets.chomp

puts "Thanks, #{name2}! Lets play!"

game = Game.new

game.new_game(name1, name2)

while game.game_on
  game.ask_question
end








