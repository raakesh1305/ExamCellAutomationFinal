<?php
//Import Student Data
 if(!isset($_POST['Submit']))
  header ('Location: ./');
?>
<?php include_once('header.php'); ?>
<div class="page_content">
<div class="container-fluid">
  <div class="row">
    <div class="col-xs-12 col-sm-12  col-md-12 col-lg-12">
      <table class="table table-bordered tabcenter table-striped">
        <tr>
          <td><strong>ID</strong></td>
          <td><strong>Year of Admission</strong></td>
          <td><strong>Semester</strong></td>
          <td><strong>Batch</strong></td>
          <td><strong>Department</strong></td>
          <td><strong>Name</strong></td>
          <td><strong>Roll Number</strong></td>
          <td><strong>Error</strong></td>
        </tr>
        <?php
	$Counter=0;
	$FileUploadPath= "uploads/";
	 if ((($_FILES["Student-Data-CSV"]["type"] == "application/vnd.ms-excel" || $_FILES["Student-Data-CSV"]["type"] =="text/csv"))&& ($_FILES["Student-Data-CSV"]["size"] < 20000000))
  {
  if ($_FILES["Student-Data-CSV"]["error"] > 0)
    {
    $result['response']= "Return Code: " . $_FILES["Student-Data-CSV"]["error"] . "<br />";
    }
    else{
      $FileName = rand(10000,99999999).'.'.pathinfo($_FILES['Student-Data-CSV']['name'],PATHINFO_EXTENSION);
      move_uploaded_file($_FILES["Student-Data-CSV"]["tmp_name"],$FileUploadPath . $FileName);
	  $FileName = $FileUploadPath . $FileName;
	  //echo $FileName;
	  //$result['response']= "Success";
     //echo "success";
	  }
    }else{
    echo "invalid file";
	//$result['response']= "Invalid File";
    }
	$file = fopen($FileName,"r");
  if($file)
  {
    $data = fgetcsv($file);
	while(!feof($file))
	{
    error_reporting(E_ERROR | E_PARSE);
		$Counter++;
		$data = fgetcsv($file);
		$yoa = mysqli_real_escape_string($conn, $data[0]);
		$sem = mysqli_real_escape_string($conn, $data[1]);
		$batch = mysqli_real_escape_string($conn, $data[2]);
		$admn = mysqli_real_escape_string($conn, $data[3]);
		$roll = mysqli_real_escape_string($conn, $data[4]);
		$uid = mysqli_real_escape_string($conn, $data[5]);
		$name = mysqli_real_escape_string($conn, $data[6]);
		$sex = mysqli_real_escape_string($conn, $data[7]);
		$dept = substr($uid,0,2);
		$SQL = mysqli_query($conn,"INSERT into student_data (yoa,sem,department,batch,admn,roll,uid,name,sex) values ('$yoa','$sem','$dept','$batch','$admn','$roll','$uid','$name','$sex')");
		if($SQL)
		 {
		  echo '<tr>
          <td>'.$Counter.'</td>
          <td>'.$yoa.'</td>
          <td>'.$sem.'</td>
          <td>'.$batch.'</td>
          <td>'.$dept.'</td>
          <td>'.$name.'</td>
          <td>'.$roll.'</td>
          <td>Success</td>
          </tr>';
		 }
		else
		{
		  echo '<tr>
          <td>'.$Counter.'</td>
          <td>'.$yoa.'</td>
          <td>'.$sem.'</td>
          <td>'.$batch.'</td>
          <td>'.$dept.'</td>
          <td>'.$name.'</td>
          <td>'.$roll.'</td>
          <td>'.mysqli_error($conn).'</td>
          </tr>';
		}
	}
}
else{
  die("Cannot open the file!!");
}
	?>
      </table>
    </div>
  </div>
</div>
<?php include_once('footer.php');


