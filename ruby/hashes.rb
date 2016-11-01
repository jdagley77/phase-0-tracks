=begin

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

puts "Would you like to update any of the information that was asked (type 'none' to skip)?"
update = gets.chomp

if update == "none"
	p design_details
	exit
end

if update == "user_name"
	"user_name".to_sym 

	puts "Please type the updated information in user_name, and hit 'enter'."
	new_user_name = gets.chomp
	design_details[:user_name] = new_user_name
end

if update == "children"
	"children".to_sym 

	puts "Please type the updated information in children, and hit 'enter'."
	new_children = gets.chomp
	design_details[:children] = new_children
end

if update == "cats"
	"cats".to_sym 

	puts "Please type the updated information in cats, and hit 'enter'."
	new_cats = gets.chomp
if new_cats == "y"
	new_cats = true
elsif new_cats == "n"
	new_cats = false
end
	design_details[:cats] = new_cats
end


if update == "style"
	"style".to_sym 

	puts "Please type the updated information in style, and hit 'enter'."
	new_style = gets.chomp
	design_details[:style] = new_style
end


if update == "color"
	"color".to_sym 

	puts "Please type the updated information in color, and hit 'enter'."
	new_color = gets.chomp
	design_details[:color] = new_color
end

if update == "birth_year"
	"birth_year".to_sym 

	puts "Please type the updated information in birth_year, and hit 'enter'."
	new_birth_year = gets.chomp
	design_details[:birth_year] = new_birth_year
end

p design_details





