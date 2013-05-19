<?php	
	require_once("inc/config.php");
	require_once("inc/ShinkaBannerAd.php"); 
	require_once("inc/functions.php"); 

	if (isset($_GET['mxit_transaction_res'])&&($_GET['mxit_transaction_res']<>0)) 
	{
		header("Location: ".$_SERVER['SERVER_NAME'].dirname($_SERVER['PHP_SELF'])."error.php?mxit_transaction_res=".$_GET['mxit_transaction_res'] );
	}
	
	//We want to pick 10 categories at a time
	$maxRows_categoryRecordset = 10;
	$pageNum_categoryRecordset = 0;
	if (isset($_GET['pageNum_categoryRecordset'])) 
	{
  		$pageNum_categoryRecordset = $_GET['pageNum_categoryRecordset'];
	}
	$startRow_categoryRecordset = $pageNum_categoryRecordset * $maxRows_categoryRecordset;

	mysql_select_db($database_mxit_murphyslaws, $mxit_murphyslaws);
	$query_categoryRecordset = "SELECT * FROM category ORDER BY category_id ASC";
	$query_limit_categoryRecordset = sprintf("%s LIMIT %d, %d", $query_categoryRecordset, $startRow_categoryRecordset, 							$maxRows_categoryRecordset);
	$categoryRecordset = mysql_query($query_limit_categoryRecordset, $mxit_murphyslaws) or die(mysql_error());
	$row_categoryRecordset = mysql_fetch_assoc($categoryRecordset);

	if (isset($_GET['totalRows_categoryRecordset'])) 
	{
  		$totalRows_categoryRecordset = $_GET['totalRows_categoryRecordset'];
	} else 
	{
	  $all_categoryRecordset = mysql_query($query_categoryRecordset);
	  $totalRows_categoryRecordset = mysql_num_rows($all_categoryRecordset);
	}
	$totalPages_categoryRecordset = ceil($totalRows_categoryRecordset/$maxRows_categoryRecordset)-1;
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="mxit" content="clearscreen" />
        <META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
        <title>Murphy's Laws</title>
    </head>
    <body>
        <h1>Murphy's Laws</h1>
		<b>Select Category:</b><br />
       	<?php $catIDBuffer = -1;?>
        <ul>   
            <?php do { ?>
            <li><a href="quotes.php?pageNum_quoteRecordset=0&id=<?php echo $row_categoryRecordset['category_id']; ?>"><?php echo $row_categoryRecordset['category_id']."</a>) "; ?>
            <a href="quotes.php?pageNum_quoteRecordset=0&id=<?php echo $row_categoryRecordset['category_id']; ?>"><?php echo $row_categoryRecordset['category']; ?></a>
            </li>
            <?php $catIDBuffer = $row_categoryRecordset['category_id'];?>
			<?php } while ($row_categoryRecordset = mysql_fetch_assoc($categoryRecordset)); ?>    

        </ul>
        <p><br/>
          <b><a href="clear_screen.html">a</a>) </b><a href="clear_screen.html"><b>Clear screen</b></a>
          <br/>
          <?php
			if (isset($_GET['pageNum_categoryRecordset']) && $_GET['pageNum_categoryRecordset'] >0 ) 
			{
				$nextPage = $pageNum_categoryRecordset + 1;
				$prevPage = $pageNum_categoryRecordset - 1;
			  	if ($catIDBuffer < $totalRows_categoryRecordset)
				{
					echo "<b><a href=\"./?pageNum_categoryRecordset=".$nextPage."\">b</a>) </b><a href=\"./?pageNum_categoryRecordset=".$nextPage."\"><b>Next Page</b></a><br/>";
					echo "<b><a href=\"./?pageNum_categoryRecordset=".$prevPage."\">c</a>) </b><a href=\"./?pageNum_categoryRecordset=".$prevPage."\"><b>Previous Page</b></a>";
				}	if ($catIDBuffer == $totalRows_categoryRecordset)
					{
						echo "<b><a href=\"./?pageNum_categoryRecordset=".$prevPage."\">b</a>) </b><a href=\"./?pageNum_categoryRecordset=".$prevPage."\"><b>Previous Page</b></a>";
					}
				
			}else
			{
				$nextPage = $pageNum_categoryRecordset + 1;
				echo "<b><a href=\"./?pageNum_categoryRecordset=".$nextPage."\">b</a>) </b><a href=\"./?pageNum_categoryRecordset=".$nextPage."\"><b>Next Page</b></a>";
			}
		?>
          
          <?php
  			$googleAnalyticsImageUrl = googleAnalyticsGetImageUrl();
		?>
          <img src="<?php echo $googleAnalyticsImageUrl; ?>" /> 
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
		
			/**
			 * Get a text banner for this user, and display it
			 */
			$ShinkaBannerAd->doServerAdRequest('text');
			print $ShinkaBannerAd->generateHTMLFromAd();
		?>     	
        </p>
        <p><strong><a href="feedback.php">F1</a>) <a href="feedback.php">Feedback/Help/About/More Info</a></strong></p>
    </body>
</html>
<?php
	mysql_free_result($categoryRecordset);
?>
