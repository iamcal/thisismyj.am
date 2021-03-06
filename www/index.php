<?
	include('../include/init.php');

	#
	# get a random key, unless one was passed in
	#

	$jam = array();
	$is_perma = 1;

	if ($_GET['id']){
		$jam = db_single(db_fetch("SELECT * FROM jams WHERE id=:id AND is_deleted=0", array(
			'id' => $_GET['id'],
		)));

		if (!$jam['id']){
			include('head.txt');
			echo "<h1 style=\"text-align: center; margin-top: 30%; font-size: 40px\">Jam not found :(</h1>";
			include('foot.txt');
			exit;
		}
	}

	if (!$jam['id']){
		$jam = db_single(db_fetch("SELECT * FROM jams WHERE is_approved=1 AND is_deleted=0 ORDER BY RAND() LIMIT 1"));
		$is_perma = 0;
	}

	db_query("UPDATE jams SET views=views+1 WHERE id=:id", array(
		'id' => $jam['id'],
	));


	# refer
	$ref = $_SERVER['HTTP_REFERER'];

	if ($ref && !preg_match('!https?://thisismyj.am!', $ref)){

		db_query("INSERT INTO refs (url, jam_id, views) VALUES (:ref, :id, 1) ON DUPLICATE KEY UPDATE views=views+1", array(
			'id'	=> $is_perma ? $jam['id'] : 0,
			'ref'	=> $ref,
		));
	}



	include('../include/head.txt');
?>

<script>
function info(){
	document.getElementById('info-link').style.display = 'none';
	document.getElementById('info-block').style.display = 'block';
	return false;
}
</script>

<div id="thejam">
	<a href="/"><img src="/img/<?=$jam['filename']?>" width="<?=$jam['w']?>" height="<?=$jam['h']?>" /></a>

	<div id="info-link">
		<a href="#" onclick="return info();" style="color: #ccc; text-decoration: none">?</a>
	</div>
	<div id="info-block" style="display: none">
		from <a href="http://www.twitter.com/<?=$jam['user']?>">@<?=$jam['user']?></a><? if ($jam['date_added']){ ?>,
		<?=date('Y-m-d H:i', $jam['date_added'])?>
		<? } ?>
	</div>
</div>

<a href="/" id="random">Random</a>
<a href="https://twitter.com/share?url=<?=urlencode("http://thisismyj.am/p/$jam[id]")?>" id="spread">Spread</a>
<a href="/p/<?=$jam['id']?>" id="preserve">Preserve</a>

<?
	include('../include/foot.txt');
?>
