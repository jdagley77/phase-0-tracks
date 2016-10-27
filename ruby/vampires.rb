

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


#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”
#Print the result at the end of the survey.


correct_age = false
current_year = 2016

if (current_year - birth_year) == age
	correct_age = true
	puts "correct age"
else
	correct_age = false 
	puts "incorrect age"
end

eats_garlic = false
if garlic_question == "y"
	eats_garlic = true
	puts "eats garlic"
elsif garlic_question == "n"
	eats_garlic = false
	puts "does not eat garlic"
end

ins_signup = false
if health_insurance == "y"
	ins_signup = true
	puts "wants insurance"
elsif health_insurance == "n"
	ins_signup = false
	puts "doesn't want insurance"
end 




case
when correct_age && (eats_garlic || ins_signup)
	puts "Probably not a vampire."
when !correct_age && (!eats_garlic || !ins_signup)
	puts "Probably a vampire."
#issue: incorrect age, no garlic and no ins signup print "probably a vampire"
when !correct_age && !eats_garlic && !ins_signup
	puts "Almost certainly a vampire."
when user_name == "Drake Cula" || user_name == "Tu Fang"
	puts "Definitely a vampire."
else puts "Results inconclusive."
end


