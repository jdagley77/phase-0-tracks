=begin
GUESSING GAME INSTRUCTIONS
one user enters a word and another user attempts to guess the word

must limit the number of guesses. the number of guesses allowed is related to the length of the word

if the user guesses the same thing twice, it doesn't count. repeated guesses don't count.

The guessing user starts with blank spaces like "_ _ _ _ _ _ _" and each time they guess a letter correctly, the space corresponding to that letter is filled in

the user gets a congratulatory message if they win and a taunting message if they lose
=end

#PROGRAM
#create a class for users. 
#We will be creating 2 instances of users, each with different words


class User
	attr_reader :word
	attr_accessor :guess_count
	def initialize(word)
		@word = word
		@guess_count = 3
	end

	def word_to_blanks(word)
		@word.length
	end

	def guess_number
		if @word.length <= 5
			@guess_count = 4
		elsif @word.length <= 10
			@guess_count = 6
		end
	end


end

#DRIVER CODE
#create user1
user1 = User.new
#ask user1 to enter a word for their opponent to guess
puts "Type a word for Player 2 to guess!"
word = gets.chomp

#create user2
user2 = User.new
#ask user2 to guess the word that user1 entered
puts "Player 2: Try and guess the word that Player 1 entered. You have #{guess_number} of guesses" 