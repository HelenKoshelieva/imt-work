<?php  
session_start () ;
/**
 * 
 */
class Card 
{
	public $id;
	public $count;
	public $price;
	public $sum;
	public $discount=10;

	public function __construct ($id,$count,$price)
			{
				$this->id=$id;
				$this->count=$count;
				$this->price=$price;
				$this->sum=$price*$count;
 
			}
	public function calc_sum ($sum,$count,$price)
			{
				$this->summ=$sum+($count*$price);
			}

	//public function __destruct()
	//		{
	//			echo 'Товар удален';
	//		}
	public	function  delete ($productid){

	unset($_SESSION['cart']['items'][$productid]);
	}

	public function discount ($sum)
			{
				$sum=$sum-$discount;
				return $sum;
			}
}




//$card1  = new Card($_GET['product'],$_GET['quantity'],$products[$_GET['product');
//$card->add_card(1,5,7);
//$cart['items'][]=$card1;

//var_dump($_SESSION['cart']);

$card2['items'][]  = new Card(2,2,2);
//$card1->add_card(2,5,6);
//$cart['items'][]=get_object_vars($card1);
//$cart['sum']=$card1;

//$card = [$obj];
//var_dump($cart['items']);
//var_dump(get_object_vars($card));

//foreach ($cart['items'] as $key => $value) {
//	for ($i=0; $i <$key ; $i++) { 
//	$cart['sum']=$cart['items'][$key]['sum'];
//	$cart['sum']=$cart['sum']+$cart['items'][$key]['sum'];
//}
//	var_dump($cart['items'][$key]['sum']);
	//$cart['sum']=$cart['items'][$key]['sum']+$cart['items'][$key]['sum'];

print_r($card2) ;
print_r($items)
//};






//var_dump($cart['sum'])
?>