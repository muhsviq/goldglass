<!DOCTYPE html>
<html>
<head>
	<title> Goldglass.info</title>
  <link rel="icon" href="<?PHP echo $site_url;?>images/basket.png" sizes="16x16" type="image/png">
	 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<?PHP echo $site_url;?>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<?PHP echo $site_url;?>css/font-awesome.min.css">
	<!--  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> -->
	 <link rel="stylesheet" type="text/css" href="<?PHP echo $site_url;?>css/camera.css">
	<link rel="stylesheet" type="text/css" href="<?PHP echo $site_url;?>css/style.css">

	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script type='text/javascript' src='<?PHP echo $site_url;?>js/jquery.min.js'></script>
    <script type='text/javascript' src='<?PHP echo $site_url;?>js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='<?PHP echo $site_url;?>js/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='<?PHP echo $site_url;?>js/camera.min.js'></script> 
    
    <script>

		jQuery(function(){
			
			jQuery('#camera_wrap_1').camera({
				thumbnails: true
			});

			jQuery('#camera_wrap_2').camera({
				height: '400px',
				loader: 'bar',
				pagination: false,
				thumbnails: true
			});
		});
	</script>
</head>
<body>

<!-- Header start here -->
<div class="header">
<div class="container">
    
		<div class="row">
			<div class=" col-md-4 col-sm-4 socials">
				<a href="http://facebook.com/goldglass"><i class="fa fa-facebook" aria-hidden="true"></i></a>
				<a href="http://twitter.com/goldglass"><i class="fa fa-twitter" aria-hidden="true"></i></a>
				<a href="http://googleplus.com/goldglass"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
			</div>
		    <div class=" col-md-4 col-sm-4 logo">
				<a href="<?PHP echo $site_url; ?>"><img src="<?PHP echo $site_url;?>images/logo.jpg"></a>
			</div>
		    <div class="col-md-4 col-sm-4 pull-right ">
		    	<div class="basket">
		    		<img  class="pull-right" src="<?PHP echo $site_url;?>images/basket.png"></img>
		    		<span class="basket-text">
		    			
		    		</span>
		    	</div>
		    
			</div>
		</div>
	</div>
</div>


<!-- Header end here -->

<!-- Navbar start here -->
 <div class="logo-mobile">
<div class="container">
  <div class="row">
  <a href="<?php echo $site_url ;?>"><img src="<?PHP echo $site_url;?>images/logo.jpg"></a>
</div>
  </div>
</div>

	<nav class="navbar navbar-inverse " data-spy="affix" data-offset-top="100">

  <div class="container">
  <div class="row">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle toggle-custom pull-left" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div><div class=" socials-mobile pull-right" >
        <a href="http://facebook.com/goldglass"><i class="fa fa-facebook" aria-hidden="true"></i></a>
        <a href="http://twitter.com/goldglass"><i class="fa fa-twitter" aria-hidden="true"></i></a>
        <a href="http://googleplus.com/goldglass"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
      </div>
    <div class="navbar-computer">
    <div class="col-xs-10">
    <div class="collapse navbar-collapse" id="myNavbar">

        <?PHP
      function make_menu($sub,$lng,$site_url,$db)
      {
        if($sub==0) {$cls='nav navbar-nav'; }
        else        {$cls='dropdown-menu';  }
        echo'<ul class="'.$cls.'">';
        $sql=MYSQLI_QUERY($db,'SELECT * FROM menu WHERE sub_id = "'.$sub.'" AND l_id="'.$lng.'" AND (tip="1") ORDER BY ordering ASC ');
        while($b=MYSQLI_FETCH_ASSOC($sql))
        {
          $sql2=MYSQLI_QUERY($db,'select * from menu where sub_id="'.$b['u_id'].'" AND l_id="'.$lng.'" AND (tip="1")');
          if(MYSQLI_NUM_ROWS($sql2)==0)
          {
          
            if(!empty($b['url'])){ $link='href="'.$b['url'].'"';  }
            else{ $link='href="'.$b['url_tag'].'"'; }

            $dt='';
            $cr='';
          }
          else
          {
            $link=' href="'.$site_url.$lng.'/ft/'.$b['u_id'].'" ';

            $dt=' class="dropdown-t" data-toggle="dropdown"';
            $cr=' <i class="fa fa-caret-down" aria-hidden="true"></i>';  
          }
          
            echo '<li><a '.$link.' '.$dt.'>'.$b['name'].$cr.'</a>';
            if(MYSQLI_NUM_ROWS($sql2)!=0)
            {
              make_menu($b['u_id'],$lng,$site_url,$db);
            }
            echo'</li>';
          
        }
        echo'</ul>';
      }
      make_menu(0,$lng,$site_url,$db);
    ?>

    </div>
    </div>
    </div> 
    
    <div class="col-xs-2">
       <div class="search pull-right">
          <form action="<?PHP echo $site_url; echo $lng?>/search/1" method="post" >
         <input type="search" name="search" placeholder="Search">
          <div class="button-search">
            <i class="fa fa-angle-double-right"><input type="submit" value="" name=""></i>
            
           </div>
           </form>
        </div>
        </div>
    </div>
        
  </div>
  
  <div class="navbar-ipad">
  <div class="container">
    <div class="row">
      
    
    <div class="collapse navbar-collapse" id="myNavbar">
        <?PHP
     
      make_menu(0,$lng,$site_url,$db);
    ?>

    </div>
    </div>
  </div>

    </div>
</nav>


<div class="container">
    <div class="row">
	   <div class="col-md-12">
	       <div class="search-responsive">
		       <div class="col-xs-10 col-sm-10">
           <form action="<?PHP echo $site_url; echo $lng?>/search/1" method="post">
			      <input type="search" name="search" placeholder="Search">

		       </div>
		    <div class="col-xs-2 col-sm-2 ">
			<div class="button-search2 pull-right">
     
           	<i class="fa fa-angle-double-right"> <input type="submit" value="" name=""></i>
           </div>
           </form>
		  </div>
	     </div>
	   </div>
    </div>
</div>
<!-- Navbar end here -->