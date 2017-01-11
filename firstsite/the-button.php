<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>The Button</title>
		<link rel="icon" type="image/x-icon" href="https://assets.raspbi.tk/images/favicons/triangle.ico">
		<link rel="stylesheet" type="text/css" href="https://assets.raspbi.tk/styles/style1.css">
		<link rel="stylesheet" type="text/css" href="style/style.css">
		<script src="https://assets.raspbi.tk/js/analytics.js"></script>
		<script src="js/jquery.js"></script>
		<script src="js/jquery-color-and-names.js"></script>
		<script src="js/variables.js"></script>
		<script src="js/main.js"></script>
		<script src="js/the-button.js"></script>
	</head>
	<body>
		<div class="main">
			<?php readfile("navbar.html") ?>
			<br><br>
			<a class="back_link" href="https://raspbi.tk">⇦ back to raspbi.tk</a>
			<h1 id="h1">The Button:</h1>
			<button id="button" type="button" onclick="theButton();">Whatever you do, do not press this button...</button>
		</div>
		<footer>Please enable JavaScript, or get a browser that supports it.</footer>
		<!-- Scripts: -->
		<script>
			$(document).ready(function() {
				changeButtonColor()
				setInterval(function() {
					changeButtonColor();
				}, 750);
			});
		</script>
		<!-- End Scripts -->
	</body>
</html>
