<div class="container">
	<div class="row">
			
			<div class="product">
				<div class="col-md-9">
				<?php 
				$s_product_cat=MYSQLI_QUERY($db,"SELECT * FROM product_cat WHERE l_id='".$lng."' AND  u_id='".$id."' ");
					$n_product_cat=MYSQLI_FETCH_ASSOC($s_product_cat); 
						?>
				<div class="breadcrumb">
					<a href="<?PHP echo $site_url ;?>">Home »</a>
		 			 <a href="" ><?php	echo $n_product_cat['name'];?></a>
		 		<?php $s_product_cat2=MYSQLI_QUERY($db,"SELECT * FROM product_cat WHERE l_id='".$lng."' AND  sub_id='".$id."' ");
					$n_product_cat2=MYSQLI_FETCH_ASSOC($s_product_cat2); ?>
					
	  			</div>
				<h1>
					<?php	echo $n_product_cat['name'];
				?>
				</h1>
						
<?PHP
			$s_product = MYSQLI_QUERY($db,"SELECT p.u_id,p.name , pp.photo FROM product p, (select * from product_photo order by id ASC) pp WHERE p.l_id='".$lng."' AND p.cat_id = '".$id."' AND p.u_id=pp.p_id Group by p.u_id ");
			
			
				while($n_product = MYSQLI_FETCH_ASSOC($s_product)){
					
					echo '<div class="col-md-4">';
						echo '<a class="name" href="';
							echo $site_url; echo $lng;
							echo '/product/';
							echo $n_product['u_id'];
						echo '">';
							echo '<img src="';
								echo $site_url.'products/'.$n_product['photo'];
							echo '"/></a>';
						echo '<a class="name" href="">';
							echo $n_product['name'];
						echo '</a></div>';	
			}
?>
				</div>
			</div>
			<!-- information start here -->
			<div class="information">
				<div class="col-md-3">
					<h3>Information</h3>

					<ul>
					<?PHP 
					$sql=mysqli_query($db,'SELECT * FROM menu WHERE (sub_id="16" || sub_id="17") AND (tip="2")AND l_id="'.$lng.'" ');
						while($query=mysqli_fetch_assoc($sql)){
					?>
						<a href="<?PHP echo $site_url.$lng.'/pages/'.$query['u_id']; ?> "><li><i class="fa fa-angle-right "></i> 

						 <?PHP echo $query['name']; ?>

						 </li></a>
					
					<?PHP } ?>
					</ul>
				</div>
			</div>
			<!-- information end here -->
	</div>
</div>