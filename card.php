<?php 
session_start () ;
  



  		
function  add ($productid,$count,$price){
$summ=$count*$price;
$cart =['sum'=>$cart['sum']+$summ,
		'items'=>[
				'id'=>$productid,
				'quantity'=>$count,
				'price'=>$price,
				 ]
      ];
return $cart;
}



function  delete ($y){
unset($cart[items][$y]);
return $cart[items][$y]; calc_card ();};




$products = [
2=>['name'=>'товар 1', 'price'=>2, 'id'=>1],
7=>['name'=>'товар 2', 'price'=>7, 'id'=>2],
43=>['name'=>'товар 3', 'price'=>43, 'id'=>3],
45=>['name'=>'товар 4', 'price'=>45, 'id'=>4],
46=>['name'=>'товар 5', 'price'=>46, 'id'=>5],
47=>['name'=>'товар 6', 'price'=>47, 'id'=>6],];





//exit("<meta http-equiv='refresh' content='0; url= /list.php'>"); 




?>


