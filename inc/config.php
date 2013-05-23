<?php
	
	//Configuration for Shinka Banners
	$config = array('AdUnitID_320'  => '352558',
                    'RESIZE_IMAGES' => TRUE,
                    'REFERER'       => 'murphyslaws',
                    'TESTUSER'      => 'tkembo');
	
	//Configuration for Google Analytics
	$GA_ACCOUNT = "MO-28800751-1";
	$GA_PIXEL = "ga.php";
	
	//DB Settings
	$hostname_mxit_murphyslaws = getenv('DB_HOST');
	$database_mxit_murphyslaws = getenv('DB_NAME');
	$username_mxit_murphyslaws = getenv('DB_USER');
	$password_mxit_murphyslaws = getenv('DB_PASS');
	
	$mxit_murphyslaws = mysql_pconnect($hostname_mxit_murphyslaws, $username_mxit_murphyslaws, $password_mxit_murphyslaws) or trigger_error(mysql_error(),E_USER_ERROR); 
	
?>