def example
	puts "red, green, blue"
	yield("yellow", "turqoise")
end

example { |colors1, colors2| puts "my favorite colors are #{colors1} and #{colors2}" }


cheese = ["cheddar", "bleu", "mozzarella", "gouda", "swiss", "parmesan"]

crackers = {
	wheat_thin: true,
	cheese_its: false,
	communion_crackers: false,
	trisquits: true,
	saltines: false,
	mark_zuckerberg: true
}

=begin
	
Demonstrate that you can iterate through each one using .each, and then using .map! 
(modifying the data in some way). Note that you can't call .map! on a hash, 
so you can skip that (.map returns an array, so a destructive map method is 
logically impossible on a hash). Print the data structures before and after each 
call to demonstrate whether they have been modified or not.
	
=end
p cheese
p crackers

puts "============="

cheese.each do |type| 
	puts type
end

puts "============="

cap_cheese = cheese.map! do |type| 
	puts type.capitalize
end

puts "============="

crackers.each do |type|
	puts type
end

puts "============="

p cap_cheese
p crackers




