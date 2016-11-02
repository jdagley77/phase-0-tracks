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


def name_to_array(real_name)
real_name.split(' ')
end

p name_to_array(real_name)

p name_to_array(real_name).last
p name_to_array(real_name).first

#exchange the order of the array
#make the first item in the array the last item and the last item the first 



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