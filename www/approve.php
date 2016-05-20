<?
	include('../include/init.php');


	if ($_POST['id']){

		db_query("UPDATE jams SET is_approved=:state WHERE id=:id", array(
			'state'	=> $_POST['is_ok'] ? 1 : 2,
			'id'	=> $_POST['id'],
		));
	}


	$row = db_single(db_fetch("SELECT * FROM jams WHERE is_approved=0 ORDER BY date_added ASC LIMIT 1"));

	if (!$row['id']){
		die('nothing to approve');
	}
?>

<div style="text-align: center">

<form action="/approve.php" method="post">
<input type="hidden" name="id" value="<?=$row[id]?>">

<input type="submit" name="is_ok" value="This Is OK"  style="font-size: 30px;" />
<input type="submit" name="is_bad" value="This Is BAD" style="font-size: 30px; color: red" /><br />

<img src="/img/<?=$row[filename]?>" width="<?=$row[w]?>" height="<?=$row[h]?>" /><br />

<?=$row[w]?> x <?=$row[h]?><br />
@<?=$row[user]?><br />
<a href="<?=HtmlSpecialChars($row['srcurl'])?>"><?=HtmlSpecialChars(truncate($row['srcurl'], 50))?></a><br />


</div>
