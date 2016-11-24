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