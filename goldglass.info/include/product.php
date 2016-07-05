<div class="container">
	<div class="row">
		<div class="col-md-10">
		<div class="breadcrumb">
				<a href="<?PHP echo $site_url ?>">Home</a>
					»
					
					<?php 
						$s_product_cat=MYSQLI_QUERY($db,"SELECT * FROM product as p, product_cat as pc WHERE p.l_id ='".$lng."' AND p.u_id='".$id."' AND p.cat_id=pc.u_id ");
						$n_product_cat=MYSQLI_FETCH_ASSOC($s_product_cat);
						echo '<a href="';
						echo $site_url.$lng.'/'.'category/'.$n_product_cat['u_id'];
						echo '">';
						echo $n_product_cat['name']."»";
					
					?></a>
						
		 			 
		 			<a href="">
		 			<?php	$s_product = MYSQLI_QUERY($db,"SELECT * FROM product as p, product_photo as pp WHERE p.u_id='".$id."' AND p.l_id='".$lng."' AND p.u_id=pp.p_id Group by p.u_id ");
			$n_product = MYSQLI_FETCH_ASSOC($s_product);
				echo $n_product['name'];
				?>
		 			</a></div>
	  			
			<div class="product-photo">
		<?php

			
				echo '<div class="col-md-4">';
				echo '<img style="width:100%;height:200px;" src="';
				echo $site_url.'products/'.$n_product['photo'];
				echo '"/>';
				echo '</div>';
				echo '</div>';
				echo '<div class="product-info">
				<div class="col-md-8 ">';
				echo '<div class="col-md-12 col-xs-12 product-name" >
						<h1 class="pull-left">';
				echo $n_product['name'];
				echo '</h1>
					</div>
					<div style="width:100%;height:1px;clear:both;"></div>';
				echo '<div class="product-section">';
				// brand start here
				echo '<div class="col-md-12 product-brand">
							<span>BRAND:</span>
							<a href="">';
							echo $n_product['description'];
							echo '</a></div>';
						
						// brand end here
				echo '<div class="col-md-12 product-code">
							<span>PRODUCT CODE:</span><a href="">';
				echo $n_product_cat['name'];
				echo '</a></div>';
				echo '<div class="col-md-12 product-avilability">
							<span>Availability:</span>
							<span class="product-stock">
								in stock
							</span>
						</div>';
				echo '<div class="col-md-12 product-price">
							<span class="text-price">price: </span><span class="price-new">';
						echo $n_product['qiymet'];
				echo '</span><span class="price-tax">ex tax: ';
					echo $n_product['qiymet2'];
				echo '</span>
						</div>';
			
				
			?>
						<div class="cart-top">
							<div class="cart-top-pad">
								<label>
								Qty:
									<input class="q-mini" stype="text" name="quantity" value="1">
									<input class="q-mini" type="hidden" name="">
								</label>
								<a href="" id="button-cart" class="button-prod">
									<i class="fa fa-shopping-cart"></i> ADD TO CART
								</a>
							</div>
						</div>
						<!-- share button start -->
						<div class="col-md-12">
							<div class="share">
								<a href="http://facebook.com"><img src="../../images/fb.png"></a>
								<a href="http://twitter.com"><img class="tw" src="../../images/tw.png"></a>
								<a href="http://google+.com"><img class="tw" src="../../images/g+.png"></a>
								<a href="http://pinterest.com"><img src="../../images/p.png"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
