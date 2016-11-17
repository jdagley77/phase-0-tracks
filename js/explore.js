//reverse("hello") --> olleh
//reverse(str)
//for each letter of the string, print backwards. start at the last letter until you reach the first.
//start at the index length of the string. until the number is 0, print each letter.
//
//


function string_reverse(str) {
	var new_string = '';
	for (var i = str.length - 1; i >= 0; i--) {
	if (1 != 2) 
	new_string += str[i];
	}
	return new_string;
};

var new_string = string_reverse("hello");
console.log(new_string);

