puts "Welcome to the hamster sanctuary! What is the name of this hamster?"
hamster_name = gets.chomp

puts "What is the volume for #{hamster_name} from 1-10?"
volume_level = gets.to_i

puts "#{volume_level}"

puts "Got it. What color fur is #{hamster_name}?"
fur_color = gets.chomp

puts "Is #{hamster_name} a good candidate for adoption (y/n)?"

adoption = gets.chomp
if adoption == "y"
	adoption = true
elsif adoption == "n"
	adoption = false
else puts "please use y or n"
end

puts "adoptable animal; #{adoption}"

puts "What is the estimated age for #{hamster_name} (in years)?"
age = gets.chomp
if age.empty?
	age = nil
else age.to_i
end


puts "#{hamster_name} has a volume level of #{volume_level}, a fur color that is #{fur_color}, and is #{age} old; You answered #{adoption} for adopable animal."
