<?
	include('init.php');

	$keys = array(
		'oauth_key'		=> OAUTH_CONSUMER_KEY,
		'oauth_secret'		=> OAUTH_CONSUMER_SECRET,
		'request_key'		=> $_COOKIE['my_req_key'],
		'request_secret'	=> $_COOKIE['my_req_secret'],
	);


	#
	# exchange the authorized access token for a request token
	#

	$params = array();
	# OAuth 1.0a servers will return an extra oauth_verifier argument
	if (isset($_GET[oauth_verifier])) $params[oauth_verifier] = $_GET[oauth_verifier];

	$ok = oauth_get_access_token($keys, OAUTH_ACCESS_URL, $params);

	if (!$ok){
		echo "Something didn't work!<hr />";
		dump_last_request();
		exit;
	}

	$ret = oauth_request($keys, OAUTH_PROTECTED_URL);
	if (!strlen($ret)) dump_last_request();

	$obj = JSON_decode($ret, true);
	$user = $obj[0]['user']['screen_name'];

	if (!$user){
		echo "failed to get user from twitter";
		dumper($obj);
		exit;
	}


	set_user($user);
	header('location: /?signedin=1');
	exit;
?>
