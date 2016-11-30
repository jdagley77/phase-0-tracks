console.log("Hello!")

function changeBackgroundColor(event) {
	event.target.style.border = "10px solid blue";
}


function colorToRed(event) {
  event.target.style.color = 'red';
}

function colorToGreen(event) {
  event.target.style.color = 'green';
}

function biggerFont(event) {
	event.target.style.fontSize = 'xx-large';
}


var photos = document.getElementsByTagName('img');
for (var i = 0; i < photos.length; i++) {
photos[i].addEventListener('click', changeBackgroundColor);
}


var h1 = document.getElementById('concepts');
h1.addEventListener('click', colorToRed);

var ul = document.getElementsByTagName('ul');
ul[0].addEventListener('click', colorToGreen);
//ul[0].addEventListener('mouseout', colorToRed);

var li = document.getElementsByTagName('li');
li[1].addEventListener('click', biggerFont);