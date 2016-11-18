//In algos.js, write a function that takes an array of words or phrases and returns 
//the longest word or phrase in the array. So if we gave your function the array of 
//["long phrase","longest phrase","longer phrase"], it would return "longest phrase". 
//This is a logical reasoning challenge, so try to reason through this based on what you already know, 
//rather than Googling the fanciest solution or looking up built-in sorting functions. 
//Note that "some string".length will do what you expect in JS.
//Add driver code that tests your function on a few arrays.


//put the first item in a new array
//then iterate through items in each array: 
//if the current item in the initial array is greater than or equal to the item in the new array, add it to the new array
//print the last item in the new array

var test = ["long phrase","longest phrase","longer phrase"]
var words = ["one", "two", "three", "fourteen", "four", "five", "seven", "six"];


function wordLength(array) {
	var newArray = [];
	newArray.push('');
	for (var i = 0; i < array.length-1; i++) {  
		if (array[i].length >= newArray[i].length) {
		newArray.push(array[i]);
		};
	};
	console.log(newArray[newArray.length-1]);	
};
	 
wordLength(words);
wordLength(test);