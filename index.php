<?
	include('init.php');

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

	include('head.txt');
?>

<a href="/"><img src="/img/<?=$jam[filename]?>" width="<?=$jam[w]?>" height="<?=$jam[h]?>" id="thejam" /></a>

<a href="/" id="random">Random</a>
<a href="https://twitter.com/share" id="spread">Spread</a>
<a href="/p/<?=$jam[id]?>" id="preserve">Preserve</a>

<?
	include('foot.txt');
?>
