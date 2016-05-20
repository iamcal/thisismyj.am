<?php
	$GLOBALS['cfg']['duo_host'] = 'api-21417761.duosecurity.com';
	$GLOBALS['cfg']['duo_ikey'] = 'DI5WYCH5FVF2SLOUD7MV';
	$GLOBALS['cfg']['duo_skey'] = trim(file_get_contents(dirname(__FILE__).'/../secrets/duo_secret_key'));
	$GLOBALS['cfg']['duo_akey'] = trim(file_get_contents(dirname(__FILE__).'/../secrets/duo_app_key'));

	$GLOBALS['cfg']['title'] = 'This Is My J.am';
	$GLOBALS['cfg']['auth_app'] = 'thisismyjam';
