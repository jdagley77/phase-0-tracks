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
p name_string.split("")

vowels = ['a', 'e', 'i', 'o', 'u']

#iterate through the name array of individual letters. 
#if the letter in the name array is included in the vowels array
#find the next letter in the vowels array and replace it with the original letter in the names array

def next_vowel
	vowels.each {|i| i.next}


end 


	
def next_consonant
	consonants = "bcdfghjklmnpqrstvwxyz"
	consonants.next
end 