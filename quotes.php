<?php

	require_once("inc/config.php");
	require_once("inc/ShinkaBannerAd.php"); 
	require_once("inc/functions.php"); 					
	
	if (isset($_GET['mxit_transaction_res'])&&($_GET['mxit_transaction_res']<>0)) 
	{
		header("Location: ".$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF'])."error.php?mxit_transaction_res=".$_GET['mxit_transaction_res'] );
	}

	//We want to pick 10 quotqtions at a time
	$maxRows_quoteRecordset = 10;
	
	 //The first page is page 0
	$pageNum_quoteRecordset = 0; 
	if (isset($_GET['pageNum_quoteRecordset'])) {
	  $pageNum_quoteRecordset = $_GET['pageNum_quoteRecordset'];
	}
	$startRow_quoteRecordset = $pageNum_quoteRecordset * $maxRows_quoteRecordset;

	mysql_select_db($database_mxit_murphyslaws, $mxit_murphyslaws);
	$query_quoteRecordset = "SELECT * FROM quote ORDER BY quote_id ASC";
	$query_limit_quoteRecordset = sprintf("%s LIMIT %d, %d", $query_quoteRecordset, $startRow_quoteRecordset, $maxRows_quoteRecordset);
	$quoteRecordset = mysql_query($query_limit_quoteRecordset, $mxit_murphyslaws) or die(mysql_error());
	$row_quoteRecordset = mysql_fetch_assoc($quoteRecordset);

	if (isset($_GET['totalRows_quoteRecordset'])) {
	  $totalRows_quoteRecordset = $_GET['totalRows_quoteRecordset'];
	} else {
	  $all_quoteRecordset = mysql_query($query_quoteRecordset);
	  $totalRows_quoteRecordset = mysql_num_rows($all_quoteRecordset);
	}
	$totalPages_quoteRecordset = ceil($totalRows_quoteRecordset/$maxRows_quoteRecordset)-1;$maxRows_quoteRecordset = 10;
	$pageNum_quoteRecordset = 0;
	if (isset($_GET['pageNum_quoteRecordset'])) {
	  $pageNum_quoteRecordset = $_GET['pageNum_quoteRecordset'];
	}
	
	$startRow_quoteRecordset = $pageNum_quoteRecordset * $maxRows_quoteRecordset;
	$quoteCounter = $startRow_quoteRecordset + 1;
	$colname_quoteRecordset = "-1";
	if (isset($_GET['id'])) {
	  $colname_quoteRecordset = $_GET['id'];
	}
	mysql_select_db($database_mxit_murphyslaws, $mxit_murphyslaws);
	$query_quoteRecordset = sprintf("SELECT * FROM quote WHERE category_id = %s ORDER BY quote_id ASC", GetSQLValueString($colname_quoteRecordset, "int"));
	$query_limit_quoteRecordset = sprintf("%s LIMIT %d, %d", $query_quoteRecordset, $startRow_quoteRecordset, $maxRows_quoteRecordset);
	$quoteRecordset = mysql_query($query_limit_quoteRecordset, $mxit_murphyslaws) or die(mysql_error());
	$row_quoteRecordset = mysql_fetch_assoc($quoteRecordset);
	
	if (isset($_GET['totalRows_quoteRecordset'])) {
	  $totalRows_quoteRecordset = $_GET['totalRows_quoteRecordset'];
	} else {
	  $all_quoteRecordset = mysql_query($query_quoteRecordset);
	  $totalRows_quoteRecordset = mysql_num_rows($all_quoteRecordset);
	}
	$totalPages_quoteRecordset = ceil($totalRows_quoteRecordset/$maxRows_quoteRecordset)-1;
	
	$colname_categoryNameRecordset = "-1";
	if (isset($_GET['id'])) {
	  $colname_categoryNameRecordset = $_GET['id'];
	}
	mysql_select_db($database_mxit_murphyslaws, $mxit_murphyslaws);
	$query_categoryNameRecordset = sprintf("SELECT * FROM category WHERE category_id = %s", GetSQLValueString($colname_categoryNameRecordset, "int"));
	$categoryNameRecordset = mysql_query($query_categoryNameRecordset, $mxit_murphyslaws) or die(mysql_error());
	$row_categoryNameRecordset = mysql_fetch_assoc($categoryNameRecordset);
	$totalRows_categoryNameRecordset = mysql_num_rows($categoryNameRecordset);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
		<meta name="mxit" content="clearscreen" />
        <title>Murphy's <?php echo $row_categoryNameRecordset['category'];?></title>   
    </head>
    <body>
        <h1>Murphy's  <?php echo $row_categoryNameRecordset['category'];?></h1>
        
        <br />
        <ul>
        
        	
            <?php do { ?>
            <li><b> Law <?php echo $quoteCounter.": "; ?></b><?php echo $row_quoteRecordset['quote']; ?></li>
            <?php $quoteCounter++;?>
			<?php } while ($row_quoteRecordset = mysql_fetch_assoc($quoteRecordset)); ?>
        	
            
        </ul>
       			
            <b><a href="clear_screen.html">a</a>) </b><a href="clear_screen.html">Clear screen</a><br/>            
			<b><a href="index.php">b</a>) </b><a href="index.php">Home (Category Listing)</a><br/>
            <?php 
			$next_page = $_GET['pageNum_quoteRecordset'] + 1;
			
			if ($totalPages_quoteRecordset >= ($next_page+1)){
          		echo "<b><a href=\"http://".$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF'])."/quotes.php?pageNum_quoteRecordset=".$next_page."&id=".$_GET['id']."\">c</a>) </b><a href=\"http://".$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF'])."/quotes.php?pageNum_quoteRecordset=".$next_page."&id=".$_GET['id']."\"><b>See 10 more ".$row_categoryNameRecordset['category']."</b></a>";
				
          }else
		  echo "<br/><b>Those are all the ".$row_categoryNameRecordset['category']." we have right now.</b><br/> <b>Thank you!</b>";
          ?>
        <?php
  			$googleAnalyticsImageUrl = googleAnalyticsGetImageUrl();
		?>
		<img src="<?php echo $googleAnalyticsImageUrl; ?>"/>  
        <br/> 	
        
        <?php

		 /*
		 * Create shinka banner ad object.
		 * Can be done at top of page, and re-used to display multiple banners on page.
		 */
		$ShinkaBannerAd = new ShinkaBannerAd($config);	
	
		/*
		 * Do a server ad request to populate the BannerAd object with a new banner.
		 * This can be done multiple times with the same ShinkaBannerAd object to get new banners for the same user
		 */
		$ShinkaBannerAd->doServerAdRequest('image');
	
		/**
		 * Get HTML that should be displayed for this banner
		 */
		print $ShinkaBannerAd->generateHTMLFromAd();

		?>	
    </body>
</html>
<?php
	mysql_free_result($quoteRecordset);
	mysql_free_result($categoryNameRecordset);
?>