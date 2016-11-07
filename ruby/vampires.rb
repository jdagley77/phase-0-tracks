puts "How many employees will be processed?"
employee_count = gets.to_i
current_count = 0

while current_count < employee_count 

puts "What is your name?"
user_name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
birth_year = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
garlic_question = gets.chomp

puts "Would you like to enroll in the company’s health insurance (y/n)?"
health_insurance = gets.chomp

#ask the user to name any allergies using a loop
#the should be able to type multiple words for their response
#the program should know when they've type "done" and stop running
#....
#ask about allergies and put response under array allergies. 
#as long as the user doesnt say sunshine keep asking.
#if they do say sunshine the results is prob a vampire, and end the program, get out of the larger loop.
#when the users hits done stop running the loop and move on.

allergies = ""

puts "please name any allergies. type 'done' when finished."
while allergies != "done" && allergies != "sunshine"
	allergies = gets.chomp	
	
end
	
break if allergies == "sunshine"

correct_age = ""
current_year = 2016

if (current_year - birth_year) == age
	correct_age = true
else
	correct_age = false 
end

eats_garlic = garlic_question == 'y'

ins_signup = health_insurance == 'y'


puts "================================="


result = "Results inconclusive."

if correct_age && 
	(eats_garlic || ins_signup)
	result = "Probably not a vampire."
	end

if !correct_age && 
	(!eats_garlic || !ins_signup)
	result = "Probably a vampire."
	end

if !correct_age && 
	!eats_garlic && 
	!ins_signup
	result = "Almost certainly a vampire."
	end

if user_name == "Drake Cula" || user_name == "Tu Fang"
	result = "Definitely a vampire."
	end

puts result

current_count += 1
end

if allergies == "sunshine"
	puts result = "Probably a vampire."
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
