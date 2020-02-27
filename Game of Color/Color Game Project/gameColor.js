var numSquares = 6;
var colors = generateRandomColors(numSquares);

var squares = document.querySelectorAll(".square");
var pickedColor = pickColor(); // pick one color.
var colorDisplay = document.getElementById("colorDisplay");
var messageDisplay = document.querySelector("#message");
var h1 = document.querySelector("h1");
var resetButton = document.querySelector("#reset");
var easyBtn = document.querySelector("#easyBtn");
var hardBtn = document.querySelector("#hardBtn");


easyBtn.addEventListener("click", function(){ 
   hardBtn.classList.remove("selected");
   easyBtn.classList.add("selected");
   // we want number of squares to be 3 in easy mode
   numSquares = 3;
   colors = generateRandomColors(numSquares);
   pickedColor = pickColor();
   colorDisplay.textContent = pickedColor;
   // looping through the frist three boxes for the easy mode to change the colors 
   for(var i = 0; i < squares.length; i++) {
       if(colors[i]) {
           squares[i].style.background = colors[i];
       } else {
           squares[i].style.display = "none";
       }
   }
});

hardBtn.addEventListener("click", function(){ 
    hardBtn.classList.add("selected");
    easyBtn.classList.remove("selected");
     // we want number of squares to be 3 in easy mode
    numSquares = 6;
   colors = generateRandomColors(numSquares);
   pickedColor = pickColor();
   colorDisplay.textContent = pickedColor;
   // looping through the frist three boxes for the easy mode to change the colors 
   for(var i = 0; i < squares.length; i++) {
           squares[i].style.background = colors[i];
           squares[i].style.display = "block";
   }
});

resetButton.addEventListener("click", function() {
	//generate all new colors and want them to be reset as a hard mode
	colors = generateRandomColors(numSquares);
	//pick a new random color from array
	pickedColor = pickColor();
	//change colorDisplay to match picked Color
    colorDisplay.textContent = pickedColor;
    messageDisplay.textContent = "";
    this.textContent = "New Colors"
	//change colors of squares
	for(var i = 0; i < squares.length; i++) {
		squares[i].style.background = colors[i];
	}
	h1.style.background = "steelblue";
});

colorDisplay.textContent = pickedColor;

for(var i = 0; i < squares.length; i++){
	// add initial colors to squares
	squares[i].style.background = colors[i];

	//add click listeners to squares
	squares[i].addEventListener("click", function() {
		//grab color of clicked squares
		var clickedColor = this.style.background;
		//compare color to pickedColor
		if(clickedColor === pickedColor) {
			messageDisplay.textContent = "Correct!";
			resetButton.textContent = "Play Again?";
			changeColors(clickedColor);
			h1.style.background = clickedColor;
		} else {
			this.style.background = "#232323";
			messageDisplay.textContent = "Try Again";
		}
	});
}

function changeColors(color) {
	//loop through all squares
	for(var i = 0; i < squares.length; i++) {
		//change each color to match given color
		squares[i].style.background = color;
	}
}

function pickColor() {
	var random = Math.floor(Math.random() * colors.length);
	return colors[random];
}

function generateRandomColors(num) {
	//make an array
	var arr = [];
	//add num random colors to arr
	for(var i = 0; i < num; i++) {
		//get random color and push into arr
		arr.push(randomColor());
	}
	//return that array
	return arr;
}

function randomColor() {
	//pick a "red" from 0 - 255 by using math.random()
	var red = Math.floor(Math.random() * 256);
	//pick a "green" from 0 - 255 using math.random()
	var green = Math.floor(Math.random() * 256);
	//pick a "blue" from 0 - 255 using math.random()
	var blue = Math.floor(Math.random() * 256);
	return "rgb(" + red + ", " + green + ", " + blue + ")";
}
