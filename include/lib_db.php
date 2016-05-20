<?php
	$GLOBALS['cfg']['db_host'] = 'localhost';
	$GLOBALS['cfg']['db_name'] = 'thisismyjam';
	$GLOBALS['cfg']['db_user'] = 'thisismyjam';
	$GLOBALS['cfg']['db_pass'] = trim(file_get_contents(dirname(__FILE__).'/../secrets/mysql_password'));


	function db_connect(){

		if (!$GLOBALS['dbh']){
			$GLOBALS['dbh'] = new PDO("mysql:host={$GLOBALS['cfg']['db_host']};dbname={$GLOBALS['cfg']['db_name']}", $GLOBALS['cfg']['db_user'], $GLOBALS['cfg']['db_pass']);
		}

		return $GLOBALS['dbh'];
	}

	function db_query($sql, $bind=array()){

		$dbh = db_connect();

		$stmt = $dbh->prepare($sql);
		foreach ($bind as $k => $v){
			$stmt->bindParam(':'.$k, $bind[$k]);
		}
		$ret = $stmt->execute();
		return array(
			'ok'		=> !!$ret,
			'affected_rows'	=> $stmt->rowCount(),
			'dbh'		=> $dbh,
			'stmt'		=> $stmt,
		);
	}

	function db_fetch($sql, $bind=array()){

		$ret = db_query($sql, $bind);
		$ret['rows'] = array();

		if ($ret['ok']){
			while ($row = $ret['stmt']->fetch(PDO::FETCH_ASSOC)){
				$ret['rows'][] = $row;
			}
		}

		return $ret;
	}

	function db_insert($table, $fields){

		$bind = array();
		$i = 1;

		foreach ($fields as $k => $v){
			$bind["f$i"] = $v;
			$i++;
		}

		$k = '`'.implode('`,`', array_keys($fields)).'`';
		$v = ':'.implode(',:', array_keys($bind));

		$ret = db_query("INSERT INTO {$table} ($k) VALUES ($v)", $bind);

		if ($ret['ok']){
			$ret['insert_id'] = $ret['dbh']->lastInsertId();
		}

		return $ret;
	}

	function db_single($ret){
		return $ret['rows'][0];
	}
