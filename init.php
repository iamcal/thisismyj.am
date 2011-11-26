<?
	include('lib_oauth.php');

	mysql_connect('localhost', 'www-rw', 'pass');
	mysql_select_db('thisismyjam');

	define('COOKIE_SECRET', 'cookie-secret');

	define('OAUTH_CONSUMER_KEY',	'oauth-key');
	define('OAUTH_CONSUMER_SECRET',	'oauth-secret');

	define('OAUTH_REQUEST_URL',	'https://api.twitter.com/oauth/request_token');
	define('OAUTH_ACCESS_URL',	'https://api.twitter.com/oauth/access_token');
	define('OAUTH_AUTHORIZE_URL',	'https://api.twitter.com/oauth/authorize');

	define('OAUTH_CALLBACK_URL',	'http:/thisismyj.am/auth/');

	define('OAUTH_PROTECTED_URL',	'http://api.twitter.com/1/statuses/user_timeline.json?count=1');

	$GLOBALS['user'] = get_user();


	function dump_last_request(){

		echo "<div style=\"background-color: #fee; border: 4px solid #900; padding: 1em; margin: 1em 0;\">";
		echo "Last HTTP Request:";
		dumper($GLOBALS['oauth_last_request']);
		echo "</div>";
		exit;
	}

	function dumper($foo){
		echo "<pre style=\"text-align: left;\">";
		echo HtmlSpecialChars(var_export($foo, 1));
		echo "</pre>\n";
	}


	function set_user($user){

		$sig = substr(sha1(COOKIE_SECRET.$user), 0, 10);
		setcookie('user', $user.$sig, time()+(5*365*24*60*60), '/', 'thisismyj.am');
	}

	function get_user(){

		$user = substr($_COOKIE['user'], 0, -10);
		$sig = substr($_COOKIE['user'], -10);

		$test_sig = substr(sha1(COOKIE_SECRET.$user), 0, 10);

		if ($test_sig == $sig) return $user;

		return null;
	}

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

?>
