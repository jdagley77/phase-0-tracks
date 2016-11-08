class Santa
def initialize(gender, ethnicity)
	p "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethnicity
end
def speak
	puts "Ho, ho, ho! Haaaappy holidays!" 
end
def eat_milk_and_cookies(cookie_type)
	p "That was a good #{cookie_type}!"
end
def reindeer_ranking
["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
end
def age(number)
	number = 0
	@age = number
end
end

joe = Santa.new
joe.speak
joe.eat_milk_and_cookies("snickerdoodle")
