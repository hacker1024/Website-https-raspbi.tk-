<!DOCTYPE html>
<html>
	<head>
		<title>{{.Name}}</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<style>
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		html {
			color: #111;
			font-size: 1em;
			font-family: sans-serif;
		}

		body {
			padding: 5px;
		}

		a {
			text-decoration: none;
			color: #111;
		}

		a:hover {
			color: #333;
		}

		header h1 {
			word-break: break-word;
		}

		header,
		main {
			margin: 0 auto;
			max-width: 920px;
		}

		main {
			padding-top: 20px;
		}

		table {
			width: 100%;
			border-collapse: collapse;
		}

		tr {
			outline: 0;
			border: 0;
		}

		tr:hover td {
			background: #f6f6f6;
		}

		th {
			text-align: left;
			padding-right: 20px;
			padding-bottom: .5em;
		}

		.col-icon {
			width: 1em;
		}

		tr td:nth-child(2) {
		 padding-right: 2px;
		}

		tr th:nth-child(4),
		tr td:nth-child(4) {
		 display: none;
		}

		tr td:first-of-type {
			padding-right: 10px;
		}

		td {
			cursor: pointer;
			padding: 10px 0;
			outline: 0;
			border: 0;
			border-bottom: 1px solid #edf1f5;
			vertical-align: middle;
			text-align: left;
			transition:background 300ms ease;
		}


		/* Mobile first */

		/* --- >= smartphones landscape --- */
		@media screen and (min-width: 480px) {
			tr th:nth-child(4),
			tr td:nth-child(4) {
			 display: table-cell;
			}
		}

		/* --- >= tablets portrait --- */
		@media screen and (min-width: 768px) {

		}

		/* --- >= tablets landscape --- */
		@media screen and (min-width: 1024px) {

		}

		/* --- >= desktop --- */
		@media screen and (min-width: 1180px) {
			td {
			padding: 4px 0;
			}
		}

		/* --- >= desktop big --- */
		@media screen and (min-width: 1300px) {

		}
		</style>
	</head>
	<body>
		<main>
			<table>
				<tr>
					<th class="col-icon"></th>
					<th class="col-name">
						{{if and (eq .Sort "name") (ne .Order "desc")}}
						<a href="?sort=name&order=desc">Name &#9650;</a>
						{{else if and (eq .Sort "name") (ne .Order "asc")}}
						<a href="?sort=name&order=asc">Name &#9660;</a>
						{{else}}
						<a href="?sort=name&order=asc">Name</a>
						{{end}}
					</th>
					<th class="col-size">
						{{if and (eq .Sort "size") (ne .Order "desc")}}
						<a href="?sort=size&order=desc">Size &#9650;</a>
						{{else if and (eq .Sort "size") (ne .Order "asc")}}
						<a href="?sort=size&order=asc">Size &#9660;</a>
						{{else}}
						<a href="?sort=size&order=asc">Size</a>
						{{end}}
					</th>
					<th class="col-time">
						{{if and (eq .Sort "time") (ne .Order "desc")}}
						<a href="?sort=time&order=desc">Modified &#9650;</a>
						{{else if and (eq .Sort "time") (ne .Order "asc")}}
						<a href="?sort=time&order=asc">Modified &#9660;</a>
						{{else}}
						<a href="?sort=time&order=asc">Modified</a>
						{{end}}
					</th>
				</tr>
			{{if .CanGoUp}}
				<tr>
					<td>
						<svg height="16" width="12" xmlns="http://www.w3.org/2000/svg"><path d="M6 2.5l-6 4.5 6 4.5v-3c1.73 0 5.14 0.95 6 4.38 0-4.55-3.06-7.05-6-7.38v-3z" /></svg>
					</td>
					<td>
						<a href=".." class="up" title="Up one level">..</a>
					</td>
					<td></td>
					<td></td>
				</tr>
			{{end}}
				{{range .Items}}
				<tr>
					<td>
						{{if .IsDir}}<svg height="16" width="14" xmlns="http://www.w3.org/2000/svg"><path d="M13 4H7v-1c0-0.66-0.31-1-1-1H1c-0.55 0-1 0.45-1 1v10c0 0.55 0.45 1 1 1h12c0.55 0 1-0.45 1-1V5c0-0.55-0.45-1-1-1z m-7 0H1v-1h5v1z" /></svg>
						{{else}}<svg height="16" width="12" xmlns="http://www.w3.org/2000/svg"><path d="M6 5H2v-1h4v1zM2 8h7v-1H2v1z m0 2h7v-1H2v1z m0 2h7v-1H2v1z m10-7.5v9.5c0 0.55-0.45 1-1 1H1c-0.55 0-1-0.45-1-1V2c0-0.55 0.45-1 1-1h7.5l3.5 3.5z m-1 0.5L8 2H1v12h10V5z" /></svg>{{end}}
					</td>
					<td>
						<a href="{{.URL}}" class="name">{{.Name}}</a>
					</td>
					<td>{{if not .IsDir}}{{.HumanSize}}{{end}}</td>
					<td>{{.HumanModTime "02.01.2006 15:04:05"}}</td>
				</tr>
				{{end}}
			</table>
		</main>
		<script>

		var rows = document.getElementsByTagName('tr');
		var max = rows.length;
		var index;

		for(index = 1; index < max; index++) {
			rows[index].onclick = function(event) {
				if( event.which == 1 ) {
					location.href = this.getElementsByTagName('a')[0].getAttribute('href');
				}
				if( event.which == 2 ) {
					window.open(this.getElementsByTagName('a')[0].getAttribute('href'));
				}
			}
		}
		</script>
	</body>
</html>
