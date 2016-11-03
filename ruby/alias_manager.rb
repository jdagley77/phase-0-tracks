=begin
PSEUDOCODE
-swap first and last name
	-split the first and last name in an array using the .split method
	-rename the new array
	-find method to re-order the objects in the array so they "swap"

-change the vowels in the name (a, e, i , o, u), to the next vowel in that sequence. 
	-define vowels as a string ...(use the .next method ?)

-change the consonants in the name to the next consonant in the alphabet.
	-define the consonants as a string, maybe use the .next method

	
=end

puts "what is the name of the spy?"
real_name = gets.chomp

def name_swap(real_name = "john doe")
#pass in a real name to the method, separate first and last name and turn into an array:
#make the user input into an array by splitting the space between first and last names,
#and then name it to make it more clear
name_array = real_name.split(' ')
#capitalize the first and last names in a new array, and label the new array
cap_name_array = name_array.map {|name| name.capitalize}
#re-arrange the new array by adding the last name into a new array, and then add the first name.
#The result is reversing the first and last names
reverse_name = []
reverse_name << cap_name_array.last
reverse_name << cap_name_array.first
end

p name_swap(real_name)


#use the array from name swap, iterate through each letter using first .each method,
#and then the .next method
#and then add 1 to the index of the vowels variable
#and pass the new vowel back into the intial array

#convert name array to an array of individual letters (so i can iterate through them)
name_string = name_swap(real_name).join
p name_string
name_split = name_string.split('')
p name_split #name of the new name array that is made up of individual letters

#join the array back together


#write a method so the vowels array gets mapped to another array that adds
#an index to the argument

vowels = ['a', 'e', 'i', 'o', 'u']
p vowels
new_name_array = name_split.map do |letter| if vowels.include?(letter)
p vowels.rotate(1)[vowels.index(letter)]
else p letter
end
puts new_name_array


 #create a new array by going through each letter of the name array
	 #if any letter in the name array is included in the vowel array
	 end	