puts "how many employees will be processed?"
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
allergies = []


puts "please name any allergies. type 'done' when finished."
while allergies != "done" && 
	allergies != "sunshine"
	allergies = gets.chomp	
	
end
	
break if allergies == "sunshine"
		


	

#ask about allergies and put response under array allergies. 
#as long as the user doesnt say sunshine keep asking.
#if they do say sunshine the results is prob a vampire, and end the program, get out of the larger loop.
#when the users hits done stop 
#running the loop and move on.



	
#continue asking what the user's allergies are
#if the response is "sunshine", stop asking the user
#and then make final_result = “Probably a vampire.”




#when the employees says "done", stop the loop. they can list as many allergies as they want 1 at a time
#until that point.

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”
#Print the result at the end of the survey.


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

puts "=============================="

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
