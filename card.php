<?php 
session_start () ;
  



  		
function  add ($productid,$count,$price){
$product=['id'=>$productid,'quantity'=>$count,'price'=>$price];
return $product;
}



function  delete ($y){
unset($cart[items][$y]);
return $cart[items][$y]; calc_card ();};










//exit("<meta http-equiv='refresh' content='0; url= /list.php'>"); 




?>


