=begin

INSTRUCTIONS:
Prompt the designer/user for all of this information.
Convert any user input to the appropriate data type.
Print the hash back out to the screen when the designer has answered 
all of the questions.

Give the user the opportunity to update a key (no need to loop, once is fine). 
After all, sometimes users make mistakes! If the designer says "none", skip it. 
But if the designer enters "decor_theme" (for example), 
your program should ask for a new value and update the :decor_theme key. 
(Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.

PSEUDOCODE:
ask the user for all the information
make the responses the data type I need, ie true/false, an integer, a string
print the users responses (in a hash) after all questions are answered

ask the user if they want to update any of the information that was asked
If the user types "none", skip this part.
if the user enters the specific data item they want to update, ask for new info and update the data item
	look up the method that turns a string into a symbol, and maybe use it here
don't worry about user error when they type in the specific key for the data item they want to update
print the updated hash and exit the program
	
=end

design_details = Hash.new 


puts "First and Last name: "
user_name = gets.chomp
design_details[:user_name] = user_name

p design_details


puts "How many children do you have?"
children = gets.to_i
design_details[:children] = children

puts "Are you allergic to cats ('y' or 'n')?"
cats = gets.chomp
if cats == "y"
	cats = true
elsif cats == "n"
	cats = false
end

design_details[:cats] = cats

puts "do you like modern or vintage?"
style = gets.chomp
design_details[:style] = style

puts "what is your favorite color"
color = gets.chomp
design_details[:color] = color

puts "Birth year: "
birth_year = gets.chomp
design_details[:birth_year] = birth_year

p design_details







