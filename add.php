<?
	include('init.php');

	$out = '/var/www/thisismyj.am/img';

	if ($_POST['url']){

		$url = $_POST['url'];

		# get target filename
		$num = 1;
		while (file_exists("{$out}/jam{$num}.jpg")) $num++;
		$target = "jam{$num}.jpg";

		# convert
		echo shell_exec("convert \"$url\" -resize 600x600\> $out/$target 2>&1");

		# get size
		list($width, $height) = getimagesize("$out/$target");

		# insert
		$sql = sprintf("INSERT INTO jams (srcurl, filename, w, h) VALUES ('%s', '%s', %d, %d)",
			AddSlashes($url), AddSlashes($target), intval($width), intval($height)
		);
		mysql_query($sql);

		$id = mysql_insert_id();
		echo "done : ID#$id<hr />";
	}
?>

<form action="add.php" method="post">
Image URL: <input type="text" name="url" />
<input type="submit" value="go" />
</form>

<hr />

<?

	$result = mysql_query("SELECT * FROM jams ORDER BY id ASC");
	while ($row = mysql_fetch_array($result)){

		if ($row['w'] >= $row['h']){
			$w = 100;
			$h = 100 * ($row['h'] / $row['w']);
		}else{
			$h = 100;
			$w = 100 * ($row['w'] / $row['h']);
		}
?>
	<img src="/img/<?=$row[filename]?>" width="<?=$w?>" height="<?=$h?>" />
<?
	}
?>
