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
	$hostname_mxit_murphyslaws = "localhost";
	$database_mxit_murphyslaws = "mxi_tmurphyslaws";
	$username_mxit_murphyslaws = "root";
	$password_mxit_murphyslaws = "";
	
	$mxit_murphyslaws = mysql_pconnect($hostname_mxit_murphyslaws, $username_mxit_murphyslaws, $password_mxit_murphyslaws) or trigger_error(mysql_error(),E_USER_ERROR); 
	
?>