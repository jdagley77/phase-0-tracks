
//ATTEMPT 1:

//put the first item in a new array
//then iterate through items in each array: 
//if the current item in the initial array is greater than or equal to the item in the new array, add it to the new array
//print the last item in the new array
var test = ["long phrase","longest phrase","longer phrase"];
var words = ["one", "two", "three", "fourteen", "four", "five", "seven", "six"];


//function wordLength(array) {
//	var newArray = [''];
//	for (var i = 0; i < array.length; i++) {  
//		if (array[i].length >= newArray[i].length) {  //does not work because length will be undefined if no item is added to new array
//		newArray.push(array[i]);
//		};
//	};
//	console.log(newArray[newArray.length-1]);	
//};
	 
//wordLength(words);
//wordLength(test);

//ATTEMPT 2:

//create a variable for longestword that is an empty string
//iterate through the array and for each item, see what the length is
//If the length of the item is greater than the longestword variable, make that item the longest word
//print longest word after the loop ends

function wordLength(array) {
var longestWord = '';
for (var i = 0; i < array.length; i++) { 
	if (array[i].length > longestWord.length) { 
		longestWord = array[i];
	}
	}
	return longestWord;
};

console.log(wordLength(words));
console.log(wordLength(test));


//compare the key/value pairs of each of the object:
//iterate through the properties in object 1
//if the current object's property is contained in object 2, assign this property to a new variable
//then check to see if the value of the same obj 2 property matches the variable.
//if the value matches as well, return true



var Person1 = {hair: "brown", age: 29, weight: 180};
var Person2 = {hair: "blonde", age: 29, weight: 189};
var Person3 = {hair: "grey", age: 77, allergies: true};

function shareCheck(obj1, obj2) {
	for (var prop in obj1) {
		//obj1Prop = '';
		if (obj2.hasOwnProperty(prop)) { //if object 2 has the current property of item 1
			//obj1Prop = prop; //obj1Prop will equal the property that both objects have in common
			if (obj1[prop] == obj2[prop]) {  //if the above checks out, and the value of object 1 = the value of the same property as object 1, return true 
			pairFound = true; //if the key and value pair of each object matches, pairFound is true
			} 
		} 
		else { pairFound = false; 
		}
	}
	return pairFound;
};

console.log(shareCheck(Person1, Person2));
console.log(shareCheck(Person1, Person3));
console.log(shareCheck(test, Person3));


//the function takes an integer
//creates an array with as many items in it, or pushes a word as many times
//the items are words which are a random length between 1 and 10 letters long

//create an empty array
//create a for loop that says while i is <= the integer passed in
	//add a word to the array i times
	//create a new word
		//for a random number of times between 1 and 10, create a new letter and add it to the word:
		//to create a new letter and add it x amount of times, create a variable for the alphabet and choose a letter from this var at random, add to the word
		//add that word to the array
		//return the array

//in simplest terms...
//do this (int) amount of times:
	//create a new word of a random amount of letters.
	//add it to an empty array



function testArray(int) {
	var newArray = [];
	for (var i = 0; i <= int-1; i++) {
		var randomNumberBetween1and10 = Math.ceil(Math.random() * 10);
		var newWord = '';
		for (var n = 1; n <= randomNumberBetween1and10; n++) {  //for a random number of times between 1 and 10, create a new letter and add it to the word:
			var alphabet = "abcdefghijklmnopqrstuvwxyz";
			newWord += alphabet[Math.floor(Math.random() * 26)]; //create new word
		};
		newArray[i] = newWord  //add new word to the array. Do this int number of times.
	}	
	return newArray; //return the array
};

console.log(testArray(4));

//perform the function 10 times:
	//each time: generate and print the array, feed this to wordLength function and print the result

for (var i = 0; i <= 10; i++) {
	console.log(wordLength(testArray(Math.ceil(Math.random() * 7))));
};













