<?PHP
	@$catid = $_GET['catid'];
	@$save = $_POST['save'];
	@$delete = $_POST['delete'];
	@$aktiv = $_POST['aktiv'];


	if(isset($save)){
			$catid = $_POST['catid'];
			$array = $_POST['order'];

			foreach($array as $k=>$vpppal) {
				foreach($vpppal as $ooo){
					$supdate = MYSQLI_QUERY($connection,"UPDATE product SET ordering='".$ooo."' WHERE u_id ='".$k."' ");
				}
			}
			if($supdate){
				echo "<br><br><center><b><font size='4' color='red'> Sıralama yerinə yetirildi! </font></b></center></br><br>
				<script>
				function redi(){
				document.location='?menu=product&catid=".$catid."'
				}
				setTimeout(\"redi()\", 3000);
				</script>";
			}
	}

	if(isset($delete)){
			$catid = $_POST['catid'];
			$chek = $_POST['chek'];
			for($n=0; $n<count($chek); $n++)
			{
				$s_del = MYSQLI_QUERY($connection,"DELETE FROM product WHERE u_id = '".$chek[$n]."'");
			}
			if($s_del){
				echo "<br><br><center><b><font size='4' color='red'> Silindi! </font></b></center></br><br>
				<script>
				function redi(){
				document.location='?menu=product&catid=".$catid."'
				}
				setTimeout(\"redi()\", 3000);
				</script>";
			}
	}
	
	
	if(isset($aktiv)){
			$catid = $_POST['catid'];
			$chek = $_POST['chek'];
			for($n=0; $n<count($chek); $n++)
			{
				$supdate = MYSQLI_QUERY($connection,"UPDATE product SET status='0' WHERE u_id = '".$chek[$n]."'");
			}
			if($supdate){
				echo "<br><br><center><b><font size='4' color='red'> Aktiv olundu! </font></b></center></br><br>
				<script>
				function redi(){
				document.location='?menu=product&catid=".$catid."'
				}
				setTimeout(\"redi()\", 3000);
				</script>";
			}
	}

	if(isset($passiv)){
			$catid = $_POST['catid'];
			$chek = $_POST['chek'];
			for($n=0; $n<count($chek); $n++)
			{
				$supdate = MYSQLI_QUERY($connection,"UPDATE product SET status='1' WHERE u_id = '".$chek[$n]."'");
			}
			if($supdate){
				echo "<br><br><center><b><font size='4' color='red'> Passiv olundu! </font></b></center></br><br>
				<script>
				function redi(){
				document.location='?menu=product&catid=".$catid."'
				}
				setTimeout(\"redi()\", 3000);
				</script>";
			}
	}

	?>

	<table>
		<!-- HEAD -->
		<thead>
			<tr>
			   <th>
			   Id
			   </th>
			   <th>
					<input class="check-all" type="checkbox" />
			   </th>
			   <th>Ad</th>
			   <th>Ardıcıllıq</th>
			   <th> </th>
			   <th>Aktiv</th>
			   <th>Idarə</th>
			</tr>
		</thead>
		<!-- BODY -->
		<tbody>
			<?PHP				

				
				
				$s_m = MYSQLI_QUERY($connection,"SELECT * FROM product WHERE l_id='1' AND tip='0' ORDER BY ordering DESC ");
				while($n_m = MYSQLI_FETCH_ASSOC($s_m)){
					?>
					<input type="hidden" name="u_id[]" value="<?PHP echo $n_m['u_id'];?>" />
					<input type="hidden" name="catid" value="<?PHP echo $catid;?>" />
					<tr>
						<th><?PHP echo $n_m['u_id'];?></th>
						<td>
							<input type="checkbox" name="chek[]" value="<?PHP echo $n_m['u_id'];?>" />
						</td>
						<td><div style="margin-left:<?PHP echo $margin?>px;"><?PHP echo $n_m['name'];?></div></td>
						<td><input class="text-input" type="text" name="order[<?PHP echo $n_m['u_id'];?>][]" size="1" value="<?PHP echo $n_m['ordering'];?>" /></td>
						<td><?PHP if(@$n_m['home']==1){?>Ana səhifədə olaacaq<?PHP }?></td>
						<td><?PHP if($n_m['status']==0){?>Aktiv<?PHP } else{?>Passiv<?PHP }?></td>
						<td>
							<!-- Icons -->
							
							 <a href="?menu=topslider&tip=2&p_id=<?php echo $n_m['u_id']; ?>" title="şəkil əlavə et">
								<img src="images/silder.jpeg" alt="slider əlavə et" style="height:25px;"/>
							 </a>&nbsp;
							
							
							<a href="?menu=product_photo&p_id=<?PHP echo $n_m['u_id'];?>" title="şəkil əlavə et">
								<img src="images/photo.jpg" alt="şəkil əlavə et" />
							 </a>&nbsp;
							 
							 <a href="?menu=product&mod=edit&id=<?PHP echo $n_m['u_id'];?>" title="Düzəliş et">
								<img src="images/pencil.png" alt="Düzəliş et" />
							 </a>&nbsp;
							 <a href="?menu=product&mod=delete&id=<?PHP echo $n_m['u_id'];?>" title="Sil">
								<img src="images/cross.png" alt="Sil" />
							 </a> 
						</td>
					</tr>
					<?PHP
				}
				?>
		</tbody>
		<!-- FOOTER -->
	</table>
</form>