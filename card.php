<?php 
session_start () ;
  

  		
function  dodavlenie ($a,$b,$c){
$cart = ['id'=>$a,'quantity'=>$b,'price'=>$c];
return $cart;};

function  delete ($y){
unset($cart[items][$y]);
return $cart[items][$y];}


$products = [
2=>['name'=>'товар 1', 'price'=>233],
7=>['name'=>'товар 2', 'price'=>333],
43=>['name'=>'товар 3', 'price'=>332],];

$cart =['sum'=>0,
		'items'=>[]
	   ];

$product=$_POST['product'];
$count=$_POST['quantity'];
$price=$products[$product]['price'];
$summ=$count*$price;


$cart['items']=dodavlenie($product,$count,$price);

$cart['sum']=$cart['sum']+$summ;

?>


