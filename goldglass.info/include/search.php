<div class="container">
	<div class="row">
		<div class="search-content">
		<h1> You search: <?php echo $_POST['search']; ?></h1>
<?php

$s_product = mysqli_query($db,"SELECT * FROM product  p, product_photo pp WHERE  p.name LIKE '%" . $_POST['search'] . "%' AND p.u_id = pp.p_id ");
while($n_product=mysqli_fetch_assoc($s_product))
	
{
echo ' <div class="col-md-3 col-sm-6">';
				
				echo '<a href="';
							echo $site_url; echo $lng;
							echo '/product/';
							echo $n_product['p_id'];
						echo '">';
						echo '<div class="col-md-12">';
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