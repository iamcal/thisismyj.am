<?
	setcookie('user', '', time()+1, '/', 'thisismyj.am');
	header('location: /');
	exit;
