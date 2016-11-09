class Car
	def initialize
		p "Let's assemble!"
	end

	def speed(int)
		p "The car can travel #{int} MPH."
	end

	def car_sound(sound)
		p "The car makes a sound like this: #{sound}"
	end

	def car_color
		p "Henry Ford said the best color of the car is black."
	end

end



car_array = []

50.times { |i|  car_array << Car.new }

car_array.each do |print|
  puts "-----"
  puts "Here the result: #{print}"
end

car_array.each do |item|
  item.car_color
  item.speed(55)
  item.car_sound("Bzzzz")
end







class Puppy
	def initialize
		p "Initializing new puppy instance ..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  		int.times {p "Woof"}
  	end 

  	def roll_over
  		p "*roll over*"
  	end

  	def dog_years(human_yrs)
  		human_yrs * 7
  	end
  	def jump
  		p "jump!"
  	end
end

Puppy.new


poodle.fetch("ball")

poodle.speak(3)

poodle.roll_over
p poodle.dog_years(3)





