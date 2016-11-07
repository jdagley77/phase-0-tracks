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


allergies_list = []


puts "please name any allergies. type 'done' when finished."
while allergies != "done" && 
	allergies != "sunshine"
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

eats_garlic = ""
if garlic_question == "y"
	eats_garlic = true
elsif garlic_question == "n"
	eats_garlic = false
end

ins_signup = ""
if health_insurance == "y"
	ins_signup = true
elsif health_insurance == "n"
	ins_signup = false
end 

puts "================================="

final_result = ""

if user_name == "Drake Cula" || user_name == "Tu Fang"
	final_result = "Definitely a vampire."
elsif correct_age && 
	(eats_garlic || ins_signup)
	final_result = "Probably not a vampire."
elsif !correct_age && 
	!eats_garlic && 
	!ins_signup
	final_result = "Almost certainly a vampire."
elsif !correct_age && 
	(!eats_garlic || !ins_signup)
	final_result = "Probably a vampire."
else final_result = "Results inconclusive."
end



current_count += 1

end

if allergies == "sunshine"
	final_result = "Probably a vampire."
end
puts final_result

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
