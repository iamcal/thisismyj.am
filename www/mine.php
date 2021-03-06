<?
	include('../include/init.php');

	if (!$user){
		header("location: /login/");
		exit;
	}

	$out = dirname(__FILE__).'/img/';

	if ($_POST['url']) do {

		$url = $_POST['url'];

		# get target filename
		$num = 1;
		while (file_exists("{$out}/jam{$num}.jpg")) $num++;
		$target = "jam{$num}.jpg";

		# convert
		$url_enc = escapeshellarg($url);
		echo shell_exec("convert $url_enc -resize 600x600\> $out/$target 2>&1");

		# get size
		list($width, $height) = getimagesize("$out/$target");

		if ($width < 400 && $height < 400){
			$error_too_small = 1;
			break;
		}

		# insert
		$ret = db_insert('jams', array(
			'srcurl'	=> $url,
			'filename'	=> $target,
			'w'		=> $width,
			'h'		=> $height,
			'user'		=> $user,
			'date_added'	=> time(),
		));

		header("location: /p/{$ret['insert_id']}");
		exit;

	} while (0);

	if ($_GET['d']){
		$id = intval($_GET['d']);
		$user_enc = AddSlashes($user);
		$c = intval($_GET['c']);

		mysql_query("UPDATE jams SET is_deleted=1 WHERE id=$id AND user='$user_enc' AND date_added=$c");
		header('location: /mine/?deleted=1');
		exit;
	}

	$subtitle = 'My Jams';

	include('../include/head.txt');

?>

<div id="page">

<h1>Add Jam</h1>

<? if ($error_too_small){ ?>
	<p style="background-color: #600">That Jam is too small!</p>
<? } ?>

<p>Enter a URL to your Jam image, must be at least 400px on the longest edge.</p>

<form action="/mine/" method="post">
Image URL: <input type="text" name="url" style="width: 400px" />
<input type="submit" value="go" />
</form>

<hr />

<h1>My Jams</h1>

<table cellpadding="8">
<?
	$ret = db_fetch("SELECT * FROM jams WHERE user=:user AND is_deleted=0 ORDER BY date_added DESC", array(
		'user' => $user,
	));

	foreach ($ret['rows'] as $row){

		if ($row['w'] >= $row['h']){
			$w = 100;
			$h = 100 * ($row['h'] / $row['w']);
		}else{
			$h = 100;
			$w = 100 * ($row['w'] / $row['h']);
		}

		$check = $row['date_added'];
?>
	<tr valign="top">
		<td><a href="/p/<?=$row['id']?>"><img src="/img/<?=$row['filename']?>" width="<?=$w?>" height="<?=$h?>" /></a></td>
		<td>
			Permalink: <a href="/p/<?=$row['id']?>">http://thisismyj.am/p/<?=$row['id']?></a><br />
			<br />
			<span class="darker">
				Source: <a href="<?=HtmlSpecialChars($row['srcurl'])?>"><?=HtmlSpecialChars(truncate($row['srcurl'], 50))?></a><br />
			</span>
			<a href="/mine/?d=<?=$row['id']?>&c=<?=$check?>" style="color: #933" onclick="return window.confirm('Are you sure you want to delete this Jam?');">Delete Jam</a>
		</td>
	</tr>
<?
	}
	if (!count($ret['rows'])){
?>
	<tr>
		<td>Your don't have any Jams yet! Add one above.</td>
	</tr>
<?
	}
?>
</table>

</div>

<?
	include('../include/foot.txt');
?>
