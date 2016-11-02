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
p reverse_name




def name_swap

end



def next_vowel
	vowels = "aeiou"
	vowels.next

end 


	
def next_consonant
	consonants = "bcdfghjklmnpqrstvwxyz"
	consonants.next
end 