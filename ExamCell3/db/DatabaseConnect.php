<?php

class db{
         public $host_name;
         public $user_name;
         public $password;
         public $database_name;
         

protected function connect() {
	
	$this->host_name = "localhost";
	$this->user_name = "root";
	$this->password = "root";
	$this->database_name = "examcell3";

	$conn = new mysqli($this->host_name,$this->user_name,$this->password,$this->database_name);

	return $conn;
		
    } 
protected function close_connection(){

	return $conn->close();

}

}




?>