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
class Game
	attr_accessor :ltr_guess_list, :word, :word_guess, :ltr_guess, :guess_count, :is_over
	attr_reader :display
	def initialize
		@word = word
		@word_guess
		@ltr_guess_list = []
		@ltr_guess = ltr_guess
		@guess_count = 0
		@is_over = false
	end

	def ltr_add(ltr_guess)
		@ltr_guess_list.push(ltr_guess)
	end

	def display(word) #make every letter in the array that hasn't been guessed a ' _ ''
	    p word.gsub(/[a-zA-Z]/, ' _ ') 
	end

	def guess_repeat_check(ltr)
		#if the letter is included in the ltr_guess_list, don't add 1 to guess count
	end

end



#DRIVER CODE
game = Game.new


puts "Player 1: type a word!"
new_word = gets.chomp
game.word = new_word
#player 1's word is now stored as an attribute for their word variable
game.display(new_word)
puts "Player 2: guess a letter!"
guess = gets.chomp #the letter guessed
#add that letter into an array of letter guesses
game.ltr_add(guess)
p game.ltr_guess_list



while !@is_over 
	puts "Guess another letter?"
	game.display(new_word)
	guess = gets.chomp
	game.ltr_add(guess)
	p game.ltr_guess_list
end



