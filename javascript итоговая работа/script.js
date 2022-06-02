var textBlock1 = document.getElementById("titleBlock1");
var num1 = document.getElementById("titleBlock2");
	function titleProject(){
		num1.innerHTML = textBlock1.value;

}

var textBlock2 = document.getElementById("nameBlock1");
var num2 = document.getElementById("nameBlock2");
	function nameProject(){
		num2.innerHTML = textBlock2.value;
}

var textBlock3 = document.getElementById("placeBlock1");
var num3 = document.getElementById("placeBlock2");
	function placeProject(){
		num3.innerHTML = textBlock3.value;
}

var textBlock4 = document.getElementById("timeBlock1");
var num4 = document.getElementById("timeBlock2");
	function timeProject(){
		num4.innerHTML = textBlock4.value;
}



let formaBackgroundColorInput = document.querySelector('.cardColor');
let formaTextColorInput = document.querySelector('.textColor');
let forma = document.querySelector('#forma2');

formaBackgroundColorInput.addEventListener('keyup', function() {
	forma.style.background = this.value;
});

formaTextColorInput.addEventListener('keyup', function() {
	forma.style.color = this.value;
});

