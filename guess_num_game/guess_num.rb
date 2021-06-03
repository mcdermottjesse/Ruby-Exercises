class Game

  def initialize
@num = rand 25
@counter = 0
  end

def game

  puts "Guess a number between 0 and 24"

  loop do
    user_answer = gets.chomp.to_i

    if user_answer == @num
      @counter += 1
      puts "You answered correct! It took you #{ @counter } attempts"
     
      break
      
      elsif user_answer > @num
        puts "You guessed too high, maybe guess a lower number"
        @counter += 1
       
        elsif user_answer < @num
          puts "You guessed too low, maybe guess a higher number"
          @counter += 1
      end
  end
end
end

game = Game.new
game.game