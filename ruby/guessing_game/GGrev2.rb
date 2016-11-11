=begin
GUESSING GAME INSTRUCTIONS
one user enters a word and another user attempts to guess the word. 

the user gets a certain amount of letter guesses, and then must guess the word.

must limit the number of guesses. the number of guesses allowed is related to the length of the word

if the user guesses the same thing twice, it doesn't count. repeated guesses don't count.

The guessing user starts with blank spaces like "_ _ _ _ _ _ _" and each time they guess a letter correctly, the space corresponding to that letter is filled in

the user gets a congratulatory message if they win and a taunting message if they lose
=end

#BUSINESS LOGIC
class Player
	attr_accessor :ltr_guess_list, :word, :word_guess
	def initialize
		#puts "initializing"
		@word
		@word_guess
		@ltr_guess
	end

end



#DRIVER CODE
player1 = Player.new
player2 = Player.new

puts "Player 1: type a word!"
player1.word = gets.chomp
#player 1's word is now stored as an attribute for their word variable
puts "Player 2: guess "
