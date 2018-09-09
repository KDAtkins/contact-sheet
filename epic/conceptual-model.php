<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta name="description" content="main page for epic"/>
		<link href="" rel="stylesheet" type="text/css"/>
		<title>Conceptual Model</title>
	</head>
	<body>
		<header>
			<!-- Navbar -->
			<nav class="topnav">
				<a href="index.php">Home</a>
				<a href="outreach-application-wireframe.php">Outreach Application - Wireframe</a>
				<a href="conceptual-model.php">Conceptual Model</a>
				<a href="use-cases.php">Use Cases</a>
				<a href="serena.php">Serena</a>
				<a href="dante.php">Dante</a>
			</nav>
		</header>
		<main>
			<h1>Conceptual Model</h1>
			<h2>Profile</h2>
			<ul>
				<li>profileID</li>
				<li>profileActivationToken</li>
				<li>profileEmail</li>
				<li>profileHash</li>
				<li>profileSalt</li>
				<li>profileUsername</li>
			</ul>
			<h2>Index</h2>
			<ul>
				<li>indexID</li>
				<li>indexProfileID</li>
				<li>indexName</li>
			</ul>
			<h2>Contact</h2>
			<ul>
				<li>contactID</li>
				<li>contactIndexID</li>
				<li>contactFirstName</li>
				<li>contactLastName</li>
				<li>contactEmail</li>
				<li>contactPhone</li>
				<li>contactCity</li>
				<li>contactState</li>
				<li>contactDate</li>
			</ul>
			<img src="images/outreach-app-erd.png">
		</main>
	</body>
	<footer>

	</footer>
</html>