#xmas list
#what it should do:
	#allow user to add an entry
	#allow user to see a list for people of a certain age range
	#view the list
	#check items off the list


require 'sqlite3'

db = SQLite3::Database.new("list.db")


create_new_list = <<-SQL
  CREATE TABLE IF NOT EXISTS list(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    interests VARCHAR(255),
    age INT,
    gift VARCHAR(255),
    purchased BOOLEAN
  )
SQL

db.execute(create_new_list)

def add_item(db, first_name, interests, age, gift, purchased=false)
	new_item = "INSERT INTO list (name, interests, age, gift, purchased) 
		VALUES (?, ?, ?, ?, ?)", [first_name, interests, age, gift, purchased]
	db.execute(new_item)
end

add_item(db, "Caroline", "soccer", 26, "ball")

=begin
def view_list 
	<<-SQL 
	SELECT * FROM list.db
	SQL
end
=end

#ask user questions and then add the data to the list table when done
=begin
puts "How many people are in your immediate family?"
fam_number = gets.chomp.to_i

list_count = 0

until list_count == fam_number

puts "Please enter the first name of the person you are getting a gift for."
first_name = gets.chomp

puts "Please enter the main interest of the person you are getting a gift for."
interests = gets.chomp

puts "Please enter the age of the person you are getting a gift for."
age = gets.chomp

puts "Please enter a gift that comes to mind for this person."
gift = gets.chomp

add_item(db, first_name, interests, age, gift, purchased=false)
end
=end

