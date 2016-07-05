<?PHP

 $sql=MYSQLI_QUERY($db,'select * from menu where u_id="'.$id.'" AND l_id="'.$lng.'" AND status = "0" AND (tip="2" OR tip="5") ');
$b=mysqli_fetch_assoc($sql)?>
  <div class="container">
    <div class="row">
    <div class="pages">
      <div class="col-xs-12"><h3><?php echo $b['name']; ?></h3></div>
      <div class="col-xs-12"> <?PHP echo $b['text']; ?></div>
      </div>
    </div>
   </div> 

