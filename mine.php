<?
	include('init.php');

	function truncate($string, $length = 80, $etc = '...', $break_words = false, $middle = false){
		if ($length == 0) return '';

    if (strlen($string) > $length) {
        $length -= min($length, strlen($etc));
        if (!$break_words && !$middle) {
            $string = preg_replace('/\s+?(\S+)?$/', '', substr($string, 0, $length+1));
        }
        if(!$middle) {
            return substr($string, 0, $length) . $etc;
        } else {
            return substr($string, 0, $length/2) . $etc . substr($string, -$length/2);
        }
    } else {
        return $string;
    }
	}


	if (!$user){
		header("location: /login/");
		exit;
	}

	$out = '/var/www/thisismyj.am/img';

	if ($_POST['url']) do {

		$url = $_POST['url'];

		# get target filename
		$num = 1;
		while (file_exists("{$out}/jam{$num}.jpg")) $num++;
		$target = "jam{$num}.jpg";

		# convert
		echo shell_exec("convert \"$url\" -resize 600x600\> $out/$target 2>&1");

		# get size
		list($width, $height) = getimagesize("$out/$target");

		if ($width < 400 && $height < 400){
			$error_too_small = 1;
			break;
		}

		# insert
		$sql = sprintf("INSERT INTO jams (srcurl, filename, w, h, user, date_added) VALUES ('%s', '%s', %d, %d, '%s', %d)",
			AddSlashes($url), AddSlashes($target), intval($width), intval($height), AddSlashes($user), time()
		);
		mysql_query($sql);

		$id = mysql_insert_id();
		header("location: /p/$id");
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

	include('head.txt');

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
	$user_enc = AddSlashes($user);

	$result = mysql_query("SELECT * FROM jams WHERE user='$user_enc' AND is_deleted=0 ORDER BY date_added DESC");
	while ($row = mysql_fetch_array($result)){

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
		<td><a href="/p/<?=$row['id']?>"><img src="/img/<?=$row[filename]?>" width="<?=$w?>" height="<?=$h?>" /></a></td>
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
	if (!mysql_num_rows($result)){
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
	include('foot.txt');
?>
