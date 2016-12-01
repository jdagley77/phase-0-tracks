# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  p students
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  show = ""
  student.to_s
  p student
  show << "Name: #{student['name']}</br>"
  show << "ID: #{student['id']}"
end

get '/contact' do
  "222 blah avenue"
end

get '/great_job/' do
  first_name = params[:first_name]
  if first_name
    "Good job, #{first_name}!"
  else
    "Good job!"
  end
end

#take each number, turn them to integers
#and add them
#return the result

get '/add_numbers/' do
  first_number = params[:first_number]
  second_number = params[:second_number]
  result = params[:first_number].to_i + params[:second_number].to_i

  "The results of #{first_number} + #{second_number} is #{result}"
end

=begin
Optional bonus: Make a route that allows the user to search the database in some way -- 
maybe for students who have a certain first name, or some other attribute. 
If you like, you can simply modify the home page to take a query parameter, 
and filter the students displayed if a query parameter is present.
=end

get '/find/:age' do
  students = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])[0]
  p students
  
  "NAME: #{students['name']}</br>
  AGE: #{students['age']}"
end

