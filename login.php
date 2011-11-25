<?
	include('init.php');

	$keys = array(
		'oauth_key'		=> OAUTH_CONSUMER_KEY,
		'oauth_secret'		=> OAUTH_CONSUMER_SECRET,
	);

	$ok = oauth_get_auth_token($keys, OAUTH_REQUEST_URL, array( 'oauth_callback' => OAUTH_CALLBACK_URL ));

	if ($ok){

		$url = oauth_get_auth_url($keys, OAUTH_AUTHORIZE_URL);

		setcookie('my_req_key',		$keys[request_key],	0, '/', 'thisismyj.am');
		setcookie('my_req_secret',	$keys[request_secret],	0, '/', 'thisismyj.am');

		header("location: $url");
		exit;
	}else{
		dump_last_request();
	}

?>
