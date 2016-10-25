puts "Welcome to the hamster sanctuary! What is the name of this hamster?"
hamster_name = gets.chomp

puts "What is the volume for #{hamster_name} from 1-10?"
volume_level = gets.chomp

puts "Got it. What color fur is #{hamster_name}?"
fur_color = gets.chomp

puts "Is #{hamster_name} a good candidate for adoption (y/n)?"
adoption = gets.chomp

puts "What is the estimated age for #{hamster_name}?"
age = gets.chomp

if age.empty?
	age = nil
end

 