<?PHP
	@$save = $_POST['save'];
	@$delete = $_POST['delete'];
	@$aktiv = $_POST['aktiv'];


	if(isset($save)){
			$array = $_POST['order'];

			foreach($array as $k=>$vpppal) {
				foreach($vpppal as $ooo){
					$supdate = MYSQLI_QUERY($connection,"UPDATE product_cat SET ordering='".$ooo."' WHERE u_id ='".$k."' ");
				}
			}
			if($supdate){
				echo "<br><br><center><b><font size='4' color='red'> " .$dil['Sıralama yerinə yetirildi'][$lng]."! </font></b></center></br><br>
				<script>
				function redi(){
				document.location='?menu=category'
				}
				setTimeout(\"redi()\", 3000);
				</script>";
			}
	}

	if(isset($delete)){
			$chek = $_POST['chek'];
			for($n=0; $n<count($chek); $n++)
			{
				$s_del = MYSQLI_QUERY($connection,"DELETE FROM product_cat WHERE u_id = '".$chek[$n]."'");
			}
			if($s_del){
				echo "<br><br><center><b><font size='4' color='red'> " .$dil['silindi'][$lng]."! </font></b></center></br><br>
				<script>
				function redi(){
				document.location='?menu=category'
				}
				setTimeout(\"redi()\", 3000);
				</script>";
			}
	}
	
	
	if(isset($aktiv)){
			$chek = $_POST['chek'];
			for($n=0; $n<count($chek); $n++)
			{
				$supdate = MYSQLI_QUERY($connection,"UPDATE product_cat SET status='0' WHERE u_id = '".$chek[$n]."'");
			}
			if($supdate){
				echo "<br><br><center><b><font size='4' color='red'> ".$dil['Aktiv olundu'][$lng]."! </font></b></center></br><br>
				<script>
				function redi(){
				document.location='?menu=category'
				}
				setTimeout(\"redi()\", 3000);
				</script>";
			}
	}

	if(isset($passiv)){
			$chek = $_POST['chek'];
			for($n=0; $n<count($chek); $n++)
			{
				$supdate = MYSQLI_QUERY($connection,"UPDATE product_cat SET status='1' WHERE u_id = '".$chek[$n]."'");
			}
			if($supdate){
				echo "<br><br><center><b><font size='4' color='red'> ".$dil['Passiv olundu'][$lng]."! </font></b></center></br><br>
				<script>
				function redi(){
				document.location='?menu=category'
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
			   <?php echo $dil['Id'][$lng]; ?>
			   </th>
			   <th>
					<input class="check-all" type="checkbox" />
			   </th>
			   <th><?php echo $dil['Ad'][$lng]; ?></th>
			   <th>Link </th>
			   <th><?php echo $dil['Ardıcıllıq'][$lng]; ?></th>
			   <th><?php echo $dil['Aktiv'][$lng]; ?></th>
			   <th><?php echo $dil['Idarə'][$lng]; ?></th>

			</tr>
		</thead>
	 <!-- BODY -->
		<tbody>
		<?PHP 
				@$page = $_GET['page'];
				if(!isset($page))$page=1;
				$s_say_menu = MYSQLI_QUERY($connection,"SELECT * FROM product_cat WHERE l_id='1' AND tip='0' ORDER BY ordering ASC");
				$n_say_menu = (mysqli_num_rows($s_say_menu));
				$page_count=200;
				$bolme_sayi = ceil($n_say_menu / $page_count); 
				$from = ( $page_count* $page ) - $page_count;

				
				
				function list_menu($sub, $u_id, $n, $from, $page_count,$margin,$conn, $lng, $dil,$sayt_url_index){
					$s_m = MYSQLI_QUERY($conn,"SELECT * FROM product_cat WHERE sub_id = '".$sub."' AND l_id='1' AND tip='0' ORDER BY ordering ASC limit ".$from.", ".$page_count."");
					if(mysqli_num_rows($s_m) != 0){
						while($n_m = MYSQLI_FETCH_ASSOC($s_m)){
							
							?>
							<input type="hidden" name="u_id[]" value="<?PHP echo $n_m['u_id'];?>" />
							<tr>
								<td><?PHP echo $n_m['u_id'];?></td>
								<td>
									<input type="checkbox" name="chek[]" value="<?PHP echo $n_m['u_id'];?>" />
								</td>
								<td><div style="margin-left:<?PHP echo $margin?>px;"><?PHP echo $n_m['name'];?></div
								<td><?PHP if(@$n_m['home']==1){?><?php echo $dil['Ana səhifədə olaacaq'][$lng]; ?><?PHP }?></td>
								</td><td><?PHP echo $sayt_url_index.$lng; echo "/category/";echo $n_m['u_id'] ; ?></td>
								<td><input class="text-input" type="text" name="order[<?PHP echo $n_m['u_id'];?>][]" size="1" value="<?PHP echo $n_m['ordering'];?>" /></td>

								<td><?PHP if($n_m['status']==0){ echo $dil['Aktiv'][$lng]; } else{ echo $dil['Passiv'][$lng]; }?></td>
								<td>
									<!-- Icons -->
									
									
									 <a href="?menu=topslider&tip=2&pos=1&p_id=<?PHP echo $n_m['u_id'];?>" title="<?php echo $dil['şəkil əlavə et'][$lng]; ?>">
										<img src="images/photo.jpg" alt="şəkil əlavə et" />
									 </a>&nbsp;
									 <a href="?menu=category&mod=edit&id=<?PHP echo $n_m['u_id'];?>" title="<?php echo $dil['Düzəliş et'][$lng]; ?>">
										<img src="images/pencil.png" alt="Düzəliş et" />
									 </a>
									 <a href="?menu=category&mod=delete&id=<?PHP echo $n_m['u_id'];?>" title="<?php echo $dil['Sil'][$lng]; ?>">
										<img src="images/cross.png" alt="Sil" />
									 </a>
								</td>
							</tr>
							<?PHP
							list_menu($n_m['u_id'],0, $n, $from, $page_count,$margin+20,$conn, $lng, $dil,$sayt_url_index);
						$n++;
						}
					}
				}
				list_menu(0, 0, 0, $from, $page_count,0,$connection, $lng, $dil,$sayt_url_index);
				?>
		</tbody>
		<!-- FOOTER -->
		<tfoot>
			<tr>
				<td colspan="6">
					<div class="pagination">
						<?PHP
						if($page == 1){}
						else{
						?>
						<a href="?menu=category&page=1" title="Birinci səhifə">&laquo; <?php echo $dil['Birinci'][$lng]; ?></a>
						<a href="?menu=category&page=<?PHP echo $page-1;?>" title="Geri"> &laquo; <?php echo $dil['Geri'][$lng]; ?> </a>
						<?PHP
						}	
							$paging = '';
							$kichikdir = 5;
							$boyukdur = 9;
							$oterefbuteref=3;
								if($bolme_sayi <= $boyukdur){
									for($nomre=1; $nomre <=$bolme_sayi; $nomre++){
									$paging .= "<a href='?menu=category&page=".$nomre."' class='number  "; 
										if($nomre == $page) $paging.="current";
										$paging.="' title='1'>".$nomre."</a>";
									}
								}
								elseif($bolme_sayi > $kichikdir && $page <=$boyukdur && $page>=$kichikdir ){
									if(($page>($bolme_sayi - $oterefbuteref)) && $page <7 )
									{
											for($nomre=1; $nomre <=$page; $nomre++){
												$paging .= "<a href='?menu=category&page=".$nomre."' class='number  "; 
													if($nomre == $page) $paging.="current";
													$paging.="' title='1'>".$nomre."</a>";
											}
									}
									else
									{
											for($nomre=1; $nomre <=$page+$oterefbuteref; $nomre++){
													$paging .= "<a href='?menu=category&page=".$nomre."' class='number  "; 
														if($nomre == $page) $paging.="current";
														$paging.="' title='1'>".$nomre."</a>";
											}
									}
									$paging.= "....<a href='?menu=category&page=".$bolme_sayi."' class='number  "; 
											if($bolme_sayi == $page) $paging.="current";
											$paging.="' title='1'>".$bolme_sayi."</a>";
											echo "salam";
								}
								elseif($bolme_sayi > $kichikdir && $page <=$kichikdir ){
									for($nomre=1; $nomre <=$kichikdir; $nomre++){
										$paging .= "<a href='?menu=category&page=".$nomre."' class='number  "; 
											if($nomre == $page) $paging.="current";
											$paging.="' title='1'>".$nomre."</a>";
									}
									$paging.= "....<a href='?menu=category&page=".$bolme_sayi."' class='number  "; 
											if($bolme_sayi == $page) $paging.="current";
											$paging.="' title='1'>".$bolme_sayi."</a>";
								}
								elseif($bolme_sayi > $boyukdur && $page >=$boyukdur && $page <=($bolme_sayi-$kichikdir)  ){
									$paging.= "<a href='?menu=category&page=1' class='number  "; 
											if($bolme_sayi == $page) $paging.="current";
											$paging.="' title='1'>1</a>...";
									for($nomre=$page-$oterefbuteref; $nomre <=$page+$oterefbuteref; $nomre++){
										$paging .= "<a href='?menu=category&page=".$nomre."' class='number  "; 
											if($nomre == $page) $paging.="current";
											$paging.="' title='1'>".$nomre."</a>";
									}
									$paging.= "....<a href='?menu=pages&page=".$bolme_sayi."' class='number  "; 
											if($bolme_sayi == $page) $paging.="current";
											$paging.="' title='1'>".$bolme_sayi."</a>";
								}
								elseif($bolme_sayi > $boyukdur && $page >=$boyukdur && $page >($bolme_sayi-$kichikdir)  ){
									$paging.= "<a href='?menu=category&page=1' class='number  "; 
											if($bolme_sayi == $page) $paging.="current";
											$paging.="' title='1'>1</a>...";
									for($nomre=$bolme_sayi-$kichikdir; $nomre <=$bolme_sayi; $nomre++){
										$paging .= "<a href='?menu=category&page=".$nomre."' class='number  "; 
											if($nomre == $page) $paging.="current";
											$paging.="' title='1'>".$nomre."</a>";
									}
								}
							
							echo $paging;
						
						if($page == $bolme_sayi){}
						else{
						?>
						<a href="?menu=category&page=<?PHP echo $page+1;?>" title="Irəli"> <?php echo $dil['İrəli'][$lng]; ?> &raquo;</a>
						<a href="?menu=category&page=<?PHP echo $bolme_sayi;?>" title="Sonuncu səhifə"><?php echo $dil['Sonuncu'][$lng]; ?> &raquo;</a>
						<?PHP
						}
						?>
					</div> <!-- pagination -->
					<div class="clear"></div>
					
				</td>
			</tr>
		</tfoot>
	</table>
</form>