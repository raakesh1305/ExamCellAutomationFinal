<?php
//Login Action
include_once('config.php');
if(isset($_POST['Submit']))
{
	echo $username = mysqli_real_escape_string($conn,$_POST['username']);
	echo "<br/><br/>";
	echo $password = mysqli_real_escape_string($conn,$_POST['password']);
	echo "<br/><br/>";
	echo $password = md5($password); // MD5 Hash
	$Auth_SQL = mysqli_query($conn,"SELECT * from student_user WHERE username = '$username' AND password = '$password'");
	if(mysqli_num_rows($Auth_SQL) > 0)
	{
		while($User_Array = mysqli_fetch_array($Auth_SQL))
		{
			$Auth = array ();
			$Auth = $User_Array;
			$Auth['auth'] = 'true';
			session_start();
			$_SESSION['auth'] = $Auth;
			header('Location: index_student.php');
		}
	}
	else
	{
		header('Location: login_student.php?error=invalid');
	}
}
?>