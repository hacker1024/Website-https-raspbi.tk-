var message = 1
function theButton() {
	message++
	if (message == 2) {$("#button").html("Ouch! Why would you click a button that tells you NOT to click it?");}
	if (message == 3) {$("#button").html("Please stop.");}
	if (message == 4) {$("#button").html("Stop it!");}
	if (message == 5) {$("#button").html("STOP!");}
	if (message == 6) {$("#button").html("Why are you so determined to keep clicking me?");}
	if (message == 7) {$("#button").html("Okay. Fine. Keep clicking. See if I care.");}
	if (message == 8) {$("#button").html("I've had enough.");}
	if (message == 9) {$("#button").html("3");}
	if (message == 10) {$("#button").html("2");}
	if (message == 11) {$("#button").html("1");}
	if (message == 12) {$("#button").html("Bye."); setTimeout(function() {$("#button").fadeOut("slow");}, 1000)}
}

// Based on random rgb colour code by Sam Deering @ sitepoint.com
function changeButtonColor() {
	var redValue = Math.floor(Math.random()*256)
	var greenValue = Math.floor(Math.random()*256)
	var blueValue = Math.floor(Math.random()*256)
	// animated style with jQuery
	$("#button").animate( {
		backgroundColor: "rgb("+redValue+","+greenValue+","+blueValue+")",
	});
	$("#button").css("border", "solid "+"rgb("+(255-redValue)+","+(255-greenValue)+","+(255-blueValue)+") "+"5px")
	if (redValue > 127.5 || greenValue > 127.5 || blueValue > 127.5) {
		$("#button").css("color", "#000000")
	}
	else if (redValue < 127.5 || greenValue < 127.5 || blueValue < 127.5) {
		$("#button").css("color", "#FFFFFF")
	}
}
