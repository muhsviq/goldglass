<iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d1520.8338617294423!2d49.781542224165214!3d40.327531372350606!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m3!3m2!1d40.326633699999995!2d49.784031299999995!4m0!5e0!3m2!1saz!2s!4v1453972380360" width="100%" height="450" frameborder="0" style="border:0;margin-top:20px;" allowfullscreen></iframe>


<!-- footer menu start here -->
<div class="container">
	<div class="row">
	<div class="footer-menu">
	 <?PHP

     
      	$sql=mysqli_query($db,'SELECT * FROM menu WHERE (sub_id="0") AND (tip="2")AND l_id="'.$lng.'" ');
      
      	while($query=mysqli_fetch_assoc($sql)){
      			echo '<div class="col-md-3 col-sm-6">
			<div class="col-md-12">
				<div class="information">';
      		echo $query['name'];
      		$d = $query['u_id'];
      		echo '</div>';
      		$sql2=mysqli_query($db,'SELECT * FROM menu WHERE (sub_id="'.$d.'") AND (tip="2")AND l_id="'.$lng.'" ');
      			echo '<ul>';
      			while($query2=mysqli_fetch_assoc($sql2)){
      				echo '<li><a href="';
      				echo $site_url.$lng.'/pages/'.$query2['u_id'];
      				echo '">';
      				echo $query2['name'];
      				echo '</a></li>';
      			}
      			 echo '</ul>';

      		
		echo '</div></div>';
      	}
      	
       // }make_footer_menu($lng,$site_url,$db);
    ?>
		
					
				
				
		
		
	</div>
	</div>
</div>
<!-- footer menu end here -->
<!-- footer start here -->


<div class="footer">
	<div class="container">
		<div class="row">
		    <div class="col-md-12">
		   		<a href="">Powered By OpenCart Gold Glass © 2016</a>
		    </div>
		</div>
	</div>
</div>
<div class="rise">
	<span>^</span>
</div>
<!-- footer end here -->
<script type="text/javascript">
	$(document).ready(function(){
var a = 0;
	$('.rise').click(function(){
$("body").animate({'scrollTop' :'0px'});
console.log(a);	
a++;
	});
	
});
	
</script>


    	

    		
</body>
</html>