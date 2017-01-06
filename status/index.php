<html>
	<head>
		<title>System Status</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="https://assets.raspbi.tk/styles/style1.css">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script src="https://assets.raspbi.tk/js/analytics.js"></script>
		<script type="text/javascript" src="scripts/jquery.min.js"></script>
		<script type="text/javascript">
			setInterval(function (){$('#load_tweets').load('record_count.php');}, 1000); // refresh every 10000 milliseconds
		</script>
		</head>
	<body>
		<div class="main">
			<h1>Live System Status</h1>
			<a class="back_link" href="https://raspbi.tk">⇦ back to raspbi.tk</a>
			<br><br>
			<div id="load_tweets"></div>
			<?php
				$ip=$_SERVER['REMOTE_ADDR'];
				echo "</pre><strong>Your Public IP = $ip</strong><br /><pre>";
			?>
		</div>
	</body>
</html>
