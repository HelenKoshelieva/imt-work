<?php 
session_start () ;

$_SESSION['delete']= $ids;
//$productcardid=$_SESSION['card']['items']['id'];
 include "card.php"; 
   //var_dump($_SESSION['cart'])
?>

<!DOCTYPE html>
<html>
<head>
	<title>
	</title>
</head>
<body>
	<h1>Ваш заказ</h1>
<h2>Вы заказали продукт 
	<?php var_dump($_SESSION['cart']) ?>
	<!--<?php echo $products[$_SESSION['cart']['items'][$_GET['product']]]['name']?></h2>
	/<p>	Кол-во <?php echo $_SESSION['cart']['items'][$_GET['product']]['count']?></p>
	<p>	Цена <?php echo $_SESSION['cart']['items'][$_GET['product']]['price']?></p>
	
	<a href="/delete.php?ids=<?php echo $_SESSION['cart']['items']['price'];?>">Удалить</a>
	
	<h2>Итого к оплате: <?php echo $_SESSION['cart']['sum']?> --></h2>






								</body>
</html>