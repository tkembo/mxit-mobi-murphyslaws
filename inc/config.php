<?php
	
	//Configuration for Shinka Banners
	$config = array('AdUnitID_320'  => '35XXXX',
                    'RESIZE_IMAGES' => TRUE,
                    'REFERER'       => 'XXXX',
                    'TESTUSER'      => 'XXXX');
	
	//Configuration for Google Analytics
	$GA_ACCOUNT = "MO-XXXXXXXX-X";
	$GA_PIXEL = "ga.php";
	
	//DB Settings
	$hostname_mxit_murphyslaws = "XXXXXXXXXXXXX.XXXXXXXXXXXX.us-east-1.rds.amazonaws.com";
	$database_mxit_murphyslaws = "mxit_murphyslaws";
	$username_mxit_murphyslaws = "XXXXXX";
	$password_mxit_murphyslaws = "XXXXXX";
	$mxit_murphyslaws = mysql_pconnect($hostname_mxit_murphyslaws, $username_mxit_murphyslaws, $password_mxit_murphyslaws) or trigger_error(mysql_error(),E_USER_ERROR); 
	
?>