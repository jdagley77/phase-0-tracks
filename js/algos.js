
//ATTEMPT 1:

//put the first item in a new array
//then iterate through items in each array: 
//if the current item in the initial array is greater than or equal to the item in the new array, add it to the new array
//print the last item in the new array
var test = ["long phrase","longest phrase","longer phrase"]
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
var longestWord = ''
for (var i = 0; i < array.length; i++) { 
	if (array[i].length > longestWord.length) { 
		longestWord = array[i];
	}
	}
	console.log(longestWord);
};

wordLength(words)
wordLength(test)


//compare the key/value pairs of each of the object:
//iterate through the properties in object 1
//if the current object's property is contained in object 2, assign this property to a new variable
//then check to see if the value of the same obj 2 property matches the variable.
//if the value matches as well, return true



var Person1 = {hair: "brown", age: 29, weight: 180}
var Person2 = {hair: "blonde", age: 29, weight: 189}
var Person3 = {hair: "grey", age: 77, allergies: true}

function shareCheck(obj1, obj2) {
	for (var prop in obj1) {
		obj1Prop = ''
		if (obj2.hasOwnProperty(prop)) { //if object 2 has the current property of item 1
			obj1Prop = prop; //obj1Prop will equal the property that both objects have in common
			if (obj1[obj1Prop] == obj2[obj1Prop]) {  //if the above checks out, and the value of object 1 = the value of the same property as object 1, return true 
			pairFound = true; //if the key and value pair of each object matches, pairFound is true
			} 
		} 
		else { pairFound = false; //otherwise, false
		}
	}
	return pairFound;
};

console.log(shareCheck(Person1, Person2))
console.log(shareCheck(Person1, Person3))
console.log(shareCheck(test, Person3))


function test(int) {



}











