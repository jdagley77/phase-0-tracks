# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza", quantity=1)
# steps: 
  # split up the string of items into an array (.split)
  # create the hash for the list
  # push the items in the array into the keys of the hash (list)
  # set default quantity for each item
  # print the list to the console [can you use one of your other methods here?]
# output: hash

	def create_list(list_items, quantity=1)
		groceries_arr = list_items.split
		grocerylist_hash = {}
		groceries_arr.each do |item|
			grocerylist_hash[item] = quantity
		end
		print_list(grocerylist_hash)
	end

#test default quantity
# create_list("apples carrots bananas milk doritos")
#test default quantity
# create_list("apples carrots bananas milk doritos", 2)

# Method to add an item to a list
# input: list, item name, optional quantity
# steps: 
	# add a key-value pair to the hash (item + quantity)
	# print out updated hash
# output: updated hash
	def add_update_item(grocerylist_hash, list_item, quantity=1)
		grocerylist_hash[list_item] = quantity
		print_list(grocerylist_hash)
	end

#rinas_list = create_list("apples carrots bananas milk doritos")
# add_item(rinas_list, "pop tarts", 30)

# Method to remove an item from the list
# input: list, item name
# steps:
	#delete a key from the hash
	# print out updated hash
# output: updated hash
	def delete_item(grocerylist_hash, list_item)
		if grocerylist_hash.include?(list_item)
		   grocerylist_hash.delete(list_item)
   		   print_list(grocerylist_hash)
		else 
		   puts "Sorry, #{list_item} is not in your list!"
		   print_list(grocerylist_hash)
		end
	end

# delete_item(rinas_list, "carrots")
	## Refactored to combine this method with add_item
	# Method to update the quantity of an item
	# input: list, item name, new quanitity
	# steps:
		# select the item you want to update
		# assign a new quantity(value) to the item(key) in the list
		# print the updated hash
	# output: updated hash
		# def update_item(grocerylist_hash, list_item, quantity)
		# 	grocerylist_hash[list_item] = quantity
		# 	print_list(grocerylist_hash)
		# end

#update_item(rinas_list, "doritos", 6)

# Method to print a list and make it readable
# input: hash/list
# steps:
	# print: "Here is your list:"
	# print out each key/value pair on a new line (key : value)
# output: set of strings 
	def print_list(grocerylist_hash)
		puts "Here is your grocery list:"
		grocerylist_hash.each do |item, value|
			puts "#{item} = #{value}"
		end
	end

#print_list(rinas_list)

##Release 2
georges_list = create_list("grapefruit fage boxed_water tropicana")
# add_item(georges_list, "lemonade", 2)
# add_item(georges_list, "tomatoes", 3)
# add_item(georges_list, "onion", 1)
# add_item(georges_list, "ice cream", 4)
# delete_item(georges_list, "lemonade")
# update_item(georges_list, "ice cream", 1)
delete_item(georges_list, "pizza")
print_list(georges_list)

=begin
REFLECT
What did you learn about pseudocode from working on this challenge?
I learned that pseudocode can be very helpful in keeping you focused on the problem. 
It is well worth taking the extra time in the beginning to map things out.

What are the tradeoffs of using arrays and hashes for this challenge?
The benefits are that arrays and hashes are easy ways in which to store data. 
You can add, delete or display items. A drawback may be that you must create multiple 
methods in order to delete or add different items.

What does a method return?
A method returns the modified argument. 
The argument is changed within the scope of the method and the result is returned. 
Another way to put it is a method returns the last expression in the scope of the method.

What kind of things can you pass into methods as arguments?
You can pass almost any object into a method as an argument - integers, strings, hashes and arrays.

How can you pass information between methods?
You can create a new variable for a method, and use that variable to pass in to another method.
This is what we did above with assigning a variable for georges_list (a hash), and passing that hash 
into other methods we created. It is important to think of the output of any method,
and how you may be able to use that output in other methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
I learned that you can pass data structures into methods as arguments, and the importance
of pseudocode. I also learned that a built-in method like .split will automatically create 
an array which you can assign and use right away. Also, this challenge solidified the
fact that methods create objects based on the last expression evaluated within each method.
This is important to keep in mind, given the importance of objects in ruby.

I need to practice more. The concepts don't come easily to me yet so it will help
to experiment with these objects on my own.

=end