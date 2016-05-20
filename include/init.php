<?
	include('config.php');

	include('lib_db.php');
	include('lib_oauth.php');


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

		$sig = hash_hmac('sha256', $user, COOKIE_SECRET);
		setcookie('user', $user.'|'.$sig, time()+(5*365*24*60*60), '/', 'thisismyj.am');

		db_query("INSERT INTO signins (user, num, last_date) VALUES (:user, 1, :time) ON DUPLICATE KEY UPDATE num=num+1, last_date=:time", array(
			'user'	=> $user,
			'time'	=> time(),
		));
	}

	function get_user(){
		$bits = explode('|', $_COOKIE['user']);
		$sig = array_pop($bits);
		$user = implode('|', $bits);

		$test_sig = hash_hmac('sha256', $user, COOKIE_SECRET);

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
