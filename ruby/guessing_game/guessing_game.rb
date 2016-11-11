=begin
GUESSING GAME INSTRUCTIONS
one user enters a word and another user attempts to guess the word

must limit the number of guesses. the number of guesses allowed is related to the length of the word

if the user guesses the same thing twice, it doesn't count. repeated guesses don't count.

The guessing user starts with blank spaces like "_ _ _ _ _ _ _" and each time they guess a letter correctly, the space corresponding to that letter is filled in

the user gets a congratulatory message if they win and a taunting message if they lose
=end

#PROGRAM
#Create a class for the game
#The instances in the game class will be words and users
	#The states for each word instance will be different strings
	#each user does not need particular states


class Word_Game
	attr_reader :guess_count, :user
	attr_accessor :word
	def initialize
		@word = word
		@guess_count = 3
		@is_over = false
		@user
		@word_guess
	end

	def word_to_blanks(word)
		#return the same number of _ _ _ _ spaces as number of letters in the word player 1 
		#typed (the word is called )

		word_array = @word.scan /\w/
		word_array.map! do |ltr|
			ltr = " _ "
		end
		word_array.join
	end

	def check_word(word)


	end

	def guess_number(word)
		if @word.length <= 5
			@guess_count = 4
		elsif @word.length <= 10
			@guess_count = 6
		end
	end


end


puts "Welcome to the Word Game!"
#DRIVER CODE
#create user1 and user2 as new instances
game = Word_Game.new
user1 = Word_Game.new
user2 = Word_Game.new
#ask user1 to enter a word for their opponent to guess
puts "Player 1: Please type a word for Player 2 to guess!"
mystery_word = gets.chomp
user1.word = mystery_word

#create a new instance of the word


#ask user2 to guess the word that user1 entered, and display the same number of _ _ _ _ as number 
#of letters in that word
puts "Player 2: try and guess the word that Player 1 entered. 
-------------------------------------------------------------

#{user1.word_to_blanks(mystery_word)}
-------------------------------------------------------------
You have #{game.guess_count} guesses"
word_guess = gets.chomp 
user2.word = word_guess
#compare the word player 1 entered (called mystery_word), with the word that player 2 
#guessed (Called word_guess).
#if any letters in word




