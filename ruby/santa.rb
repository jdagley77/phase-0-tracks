class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = reindeer_ranking
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

	def celebrate_birthday(age)
		@age = age + 1
	end 

	def get_mad_at(reindeer_name)
		#delete the reindeer's name in the reindeer ranking array
		#and add it to the end of the reindeer ranking array
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end
	
	#def change_gender(new_gender)
	#	@gender = new_gender
	#end
end



#SANTA PROGRAM

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
new_santa_instances = []

	25.times do |i| new_santa_instances << Santa.new(example_genders.sample[i], example_ethnicities.sample[i])
	new_santa_instances[i].age = rand(0..140)
			end

#driver code			
p new_santa_instances
p new_santa_instances[20].age
#p joe = Santa.new("Irish", "undecided")
#joe.age = 23
#p joe

=begin
OLD DRIVER CODE:
joe = Santa.new("male", "African")
michael = Santa.new("male", "Irish")
joe.speak
joe.eat_milk_and_cookies("snickerdoodle")
p joe.age
p joe.celebrate_birthday(3)
p joe.reindeer_ranking
p joe.get_mad_at("Prancer")
p joe.gender
p joe.change_gender("female")
p joe.age
p joe.ethnicity
p joe = Santa.new("male", "African")
p joe.ethnicity
p joe.gender = "undecided"
p joe.gender
p joe.age
=end


#DIFFERENT WAYS TO INITIALIZE SANTA INSTANCES:
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end



i = 0
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
while santas.length <= example_genders.length
	santas << Santa.new(example_genders[i], example_ethnicities[i])
	i+=1
end

p santas



gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []
santas << Santa.new(gender[0], ethnicity[0])
santas << Santa.new(gender[1], ethnicity[1])
santas << Santa.new(gender[2], ethnicity[2])
santas << Santa.new(gender[3], ethnicity[3])
santas << Santa.new(gender[4], ethnicity[4])
santas << Santa.new(gender[5], ethnicity[5])
santas << Santa.new(gender[6], ethnicity[6])
santas << Santa.new(gender[7], ethnicity[7])

p santas



