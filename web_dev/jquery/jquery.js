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



var photos = document.getElementsByTagName('img');
for (var i = 0; i < photos.length; i++) {
photos[i].addEventListener('click', changeBackgroundColor);
}


var h1 = document.getElementById('concepts');
h1.addEventListener('click', colorToRed);

$document.ready(function() {
	$('#things').on('click',colorToGreen);
})
