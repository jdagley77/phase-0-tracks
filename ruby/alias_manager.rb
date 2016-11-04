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

#unless real_name == 'quit', continue asking the question.



real_name = ""

while real_name != 'quit'
puts "what is the name of the spy (type 'quit' to exit the program)?"
real_name = gets.chomp

if real_name == 'quit'
	exit
end

#add given name to a hash called directory
directory = {}
directory.merge!(given_name: real_name)


def name_swap(real_name)
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

name_swap(real_name)


name_string = name_swap(real_name).join

#pass in name_string which will be the string of the name
#turn this string into an array and call it new_name_array
#make a new array using .map, which looks through each letter in new_name_array
#and checks if that letter exists in the vowels array
#then use the index for that letter in the vowels array
#and apply it to the rotated vowels array so that it prints the next vowel
#if the letter in new_name_array does not exist in the vowels array
#add the letter to the new_name_array


def vowel_advance(name_string)
name_split = name_string.split('')
vowels = ['a', 'e', 'i', 'o', 'u']

new_name_array = name_split.map {|letter| if vowels.include?(letter)
vowels.rotate[vowels.index(letter)]
else letter 
end
}
	new_name_array.join
end
one_string_name = vowel_advance(name_string)

def name_separate(name)
vowel_adv_array = name.scan(/[A-Z][a-z]+/)
vowel_adv_array.join(" ")
end

name_separate(one_string_name)

directory.merge!(spy_name: name_separate(one_string_name))

puts "#{directory[:given_name]} is also known as #{directory[:spy_name]}"

if real_name == 'quit'
	exit
end


end

