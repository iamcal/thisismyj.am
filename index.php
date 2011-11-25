<?
	include('db.php');

	#
	# get a random key, unless one was passed in
	#

	$jam = array();
	$is_perma = 1;

	if ($_GET['id']){
		$id = intval($_GET['id']);
		$jam = mysql_fetch_array(mysql_query("SELECT * FROM jams WHERE id='$id'"));
	}

	if (!$jam['id']){
		$jam = mysql_fetch_array(mysql_query("SELECT * FROM jams ORDER BY RAND() LIMIT 1"));
		$is_perma = 0;
	}
?>
<html>
<head>
<title>This Is My Jam</title>
<!--

By Cal Henderson / iamcal.com / @iamcal

-->
<style>

body {
	margin: 0;
	padding: 0;
	background-color: #000;
}

#header {
	border-top: 2px solid yellow;
}

#site_name {
	background: url("/img/logo_beta.png") no-repeat scroll 0 -2px transparent;
	display: block;
	font: bold 24px/1.5 helvetica,sans-serif;
	height: 107px;
	letter-spacing: 1px;
	margin: 0 0;
	position: absolute;
	right: 40px;
	width: 87px;
	top: -1px;
	z-index: 1;
}

#thejam {
	position: absolute;
	top: 50%;
	left: 50%;
	width: <?=$jam[w]?>px;
	height: <?=$jam[h]?>px;
	margin-top: -<?=$jam[h]/2?>px;
	margin-left: -<?=$jam[w]/2?>px;
}

#random {
	position: absolute;
	bottom: 5px;
	left: 15px;
	font: 22px/1.5 helvetica,sans-serif;
	color: #fff;
}

#preserve {
	position: absolute;
	bottom: 5px;
	right: 15px;
	font: 22px/1.5 helvetica,sans-serif;
	color: #fff;
}

#spread {
	position: absolute;
	bottom: 5px;
	left: 50%;
	margin-left: -35px;
	font: 22px/1.5 helvetica,sans-serif;
	color: #fff;
}

</style>
</head>
<body>

<div id="header">
	<a href="/" id="site_name" title="This Is My Jam"></a>
</div>

<a href="/"><img src="/img/<?=$jam[filename]?>" width="<?=$jam[w]?>" height="<?=$jam[h]?>" id="thejam" /></a>

<a href="/" id="random">Random</a>
<a href="https://twitter.com/share" id="spread">Spread</a>
<a href="/p/<?=$jam[id]?>" id="preserve">Preserve</a>

</body>
</html>

