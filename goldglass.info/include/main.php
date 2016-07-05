<!-- Slider start here -->
<div class="fluid_container">
    	
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
        <?PHP
        $s_slider = MYSQLI_QUERY($db,"SELECT * FROM slider WHERE l_id ='".$id."' AND tip=1 ORDER BY ordering ASC");
        while($n_slider =MYSQLI_FETCH_ASSOC($s_slider)){
        	echo '<div data-src="';
        	echo 'products/'.$n_slider['photo'];
        	echo '">';
        	echo '<div class="camera_caption fadeFromBottom">';
               echo $n_slider['text'].'</div>';
             echo '</div>';
}


        ?>
           <!--  <div data-src="images/bridge.jpg">
                <div class="camera_caption fadeFromBottom">
                    Camera is a responsive/adaptive slideshow. <em>Try to resize the browser window</em>
                </div>
            </div> -->
          
           
        </div><!-- #camera_wrap_1 -->

    </div><!-- .fluid_container -->
    
    <div style="clear:both; display:block; height:1px"></div>
<!--     Slider end here -->
<!-- featured start here -->
<div class="container">
	<div class="row">
       <div class="col-md-12">
          <div class="featured-caption">
            <img src="images/featured.png">
          </div>
        </div>
        <div class="col-md-12">
		  <div class="featured">
		   
		     	
		     	<?php	$s_product = MYSQLI_QUERY($db,"SELECT * FROM product as p, product_photo as pp WHERE p.checkbox=1 AND p.l_id='".$lng."' AND p.u_id=pp.p_id  Group by p.u_id ORDER BY 'ordering' DESC limit 4 ");
			while($n_product = MYSQLI_FETCH_ASSOC($s_product)){
				echo ' <div class="col-md-3 col-sm-6">';
				echo '<div class="col-md-12">';
				echo '<a class="name" href="';
							echo $site_url; echo $lng;
							echo '/product/';
							echo $n_product['p_id'];
						echo '">';
		     	echo '<img src="';
				echo $site_url.'products/'.$n_product['photo'];
				echo '"/>';
		     	echo '</div>';
		     	echo '<div class="col-md-12"><div class="product-name">';
		     	echo $n_product['name'];
		     	echo '</div></div></a>';
		     	echo '	<div class="col-md-12">
		     	<a  href="">
		     	<div class="add-to-cart">
		     		
		     			<span>
		     				ADD TO  CART
		     			</span>
		     		
		     	</div>	
                </a>
		     	</div>';
				echo '</div>';
			}

		     ?>
		    
		        
		     	
		     	
		     		
		     	
		     
		     
		    
		     

			 
		  </div>
	   </div>
	</div>
</div>
<!-- featured end here -->
