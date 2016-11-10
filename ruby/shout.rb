module Shout
	 def maniac_yell(words)
	 	"I get so mad I want to yell '#{words}' sometimes!"
	 end

	 def yell_angrily(words)
	 	words + " rarrr" + "!!!!" + ":("
	 end

	 def yell_happily(words)
	 	words + "!!!" + " yay"
	 end

	 # we'll put some methods here soon, but this code is fine for now!
	 
	 #def self.yell_angrily(words)
	 #	words + "!!!" + " :("
	 #end

	 #def self.yell_happily(words)
	 #	words + "!!!" + " :)"
	 #end
end

class Crazy_person
	include Shout
end

class Coach
	include Shout
end


jim = Crazy_person.new
john = Coach.new

p jim.maniac_yell("this world is crazy")
p john.maniac_yell("Run harder")
p jim.yell_angrily("I don't understand")
p john.yell_angrily("give me 20 pushups")
p jim.yell_happily("Best day ever")
p john.yell_happily("Good game gentlemen")
#p Shout.yell_angrily("I'm full of emotion")
#p Shout.yell_happily("What a day")
