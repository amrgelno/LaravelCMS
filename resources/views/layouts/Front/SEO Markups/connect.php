
<?php
abstract class condb {
  // Properties    cannot creat object

  protected $localhost='127.0.0.1';
  protected $password='root';
  protected $dbuser='root';
  protected $db2='cmslarv';

  // Methods
 public function connectF() {

   $connect= new mysqli($this->localhost,$this->dbuser,$this->password,$this->db2)  ;

   return   $connect;

	/*mysqli_select_db($connect,);*/
  }

     #abstract function sql();
	 #abstract function cover();

}



?>









