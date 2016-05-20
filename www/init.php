<?
	include('config.php');
	include('lib_oauth.php');

	mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASS);
	mysql_select_db(MYSQL_DB);

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

		$t = time();
		$user_enc = AddSlashes($user);

		mysql_query(sprintf("INSERT INTO signins (user, num, last_date) VALUES ('$user_enc', 1, $t) ON DUPLICATE KEY UPDATE num=num+1, last_date=$t"));
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
