class Hangman

  def initialize
    
    @word = words.sample #sample accesses random item from array #once a correct/guess is made remove letter
    @lives = 7
    
    @word_teaser = ""
    

    @word.first.length.times do
      @word_teaser += " _ "
    end 
  end

  def words
[
  ["austrailia", "Funny accents and scary animals"],
  ["skateboard", "Defying the laws of physics"],
  ["ruby", "The language this game is programmed in"],
  ["boxer", "A fighter or a dog breed?"],
  ["pretzel", "Extra salt please"],
  ["marmite", "My spread of choice"]

]
  end

  def print_teaser last_guess = nil #if there was no last guess

    update_teaser(last_guess) unless last_guess.nil?

    puts @word_teaser
end

def update_teaser last_guess
new_teaser = @word_teaser.split

new_teaser.each_with_index do |letter, index|
  #replace blank values with guessed letter if matches letter in word
if letter == '_' && @word.first[index] == last_guess
  new_teaser[index] = last_guess

end
end

@word_teaser = new_teaser.join(' ')

end

def make_guess
if @lives > 0
  puts "Enter a letter"
  guess = gets.chomp
  good_guess = @word.first.include? guess

  if guess == "exit"
    
    puts "Thank you for playing :p"

  elsif guess.length > 1
    puts "only guess 1 letter at a time please!"
      make_guess
      
  elsif good_guess
    puts "You guessed #{guess}, which is a correct guess! ;)"

    print_teaser guess
if @word.first == @word_teaser.split.join
  puts "Congrats! You won this round!"
else
    make_guess
end
  else
    @lives -= 1
    puts "You guessed #{guess}, which is an incorrect guess! You have #{ @lives } guesses left :( Try again!"
    make_guess
  end
else
  puts "Game Over!"
  end
end
  
def begin

puts "New game has begun... your word is #{ @word.first.length } characters long"
puts "To exit game at any time, type 'exit'"
print_teaser

puts "Clue: #{ @word.last }"

make_guess

  end
end

game = Hangman.new

game.begin