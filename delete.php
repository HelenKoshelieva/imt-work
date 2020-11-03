<?php 
session_start () ;

include "card.php"; 


$ids=$_GET[$productcardid];


$_SESSION['cart']['items']=delete($ids);



exit("<meta http-equiv='refresh' content='0; url= /list.php'>");

?>
