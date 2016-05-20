<?
	define('COOKIE_SECRET', trim(file_get_contents(dirname(__FILE__).'/../secrets/cookie_secret')));

	define('OAUTH_CONSUMER_KEY',	'TawPJxhxuQtqdioXrgCIhQ');
	define('OAUTH_CONSUMER_SECRET',	trim(file_get_contents(dirname(__FILE__).'/../secrets/twitter_oauth_secret')));

	define('OAUTH_REQUEST_URL',	'https://api.twitter.com/oauth/request_token');
	define('OAUTH_ACCESS_URL',	'https://api.twitter.com/oauth/access_token');
	define('OAUTH_AUTHORIZE_URL',	'https://api.twitter.com/oauth/authorize');

	define('OAUTH_CALLBACK_URL',	'http://thisismyj.am/auth/');

	define('OAUTH_PROTECTED_URL',	'https://api.twitter.com/1.1/statuses/user_timeline.json?count=1');
