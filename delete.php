<?php 
session_start () ;

include "card.php"; 


$ids=$_GET['ids'];


$cart['items']=delete($ids);



exit("<meta http-equiv='refresh' content='0; url= /list.php'>");

?>
