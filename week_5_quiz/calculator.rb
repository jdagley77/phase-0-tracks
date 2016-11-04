
input = ""
while input != 'done'

puts "what calculation would you like to perform? (enter 'done' when finished)"
input = gets.chomp

calc_array = []
calc_array << input

def calculate(int_1, operator, int_2)
p int_1.send(operator, int_2)
end


=begin
calculate(4, :+, 5)
calculate(4, :*, 5)
calculate(4, :-, 2)
calculate(6, :/, 2)
=end

if input == 'done'
	puts "#{calc_array.count} calculations performed: "
	exit
end
end
