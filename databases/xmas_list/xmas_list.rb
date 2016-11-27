#xmas list
#what it should do:
	#allow user to add an entry
	#allow user to see a list for people of a certain age range
	#view the list
	#check items off the list


require 'sqlite3'

db = SQLite3::Database.new("list.db")
#db.results_as_hash = true


create_new_list = <<-SQL
  CREATE TABLE IF NOT EXISTS list (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    interests VARCHAR(255),
    age INTEGER,
    gift VARCHAR(255),
    purchased BOOLEAN
  )
SQL

db.execute(create_new_list)

def add_item(db, first_name, interests, age, gift, purchased)
db.execute("INSERT INTO list (name, interests, age, gift, purchased) 
VALUES (?, ?, ?, ?, ?)", [first_name, interests, age, gift, purchased])
end

#add_item(db, "Mom", "gardening", 55, "gardening tools", "false")


view_list_cmd = db.execute("SELECT * FROM list")
#p view_list_cmd


#show the list in a user-friendly fashion
puts "Here's your list so far: "
	view_list_cmd.each do |row|
		#puts "#{row}\n" 
		
		puts "#{row[1]} - #{row[2]} - #{row[4]}"
		#puts "interests: #{row[2]}\n"
		#puts "gift ideas: #{row[4]}\n"
	end
	





#ask user questions and then add the data to the list table when done

puts "How many people are in your immediate family?"
fam_number = gets.chomp.to_i

list_count = 0

until list_count == fam_number

puts "Enter recipient of gift: "
first_name = gets.chomp

puts "Enter their interests :"
interests = gets.chomp

puts "Please enter their age: "
age = gets.chomp

puts "Enter a gift idea: "
gift = gets.chomp

add_item(db, first_name, interests, age, gift, purchased="false")

puts db.execute(view_list_cmd)

end


