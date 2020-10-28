<?php 
session_start () ;

$_SESSION['delete']= $ids;
 include "card.php"; 
   
?>

<!DOCTYPE html>
<html>
<head>
	<title>
	</title>
</head>
<body>
	<h1>Ваш заказ</h1>
<h2>Вы заказали продукт <?php echo $products[$product]['name']?></h2>
	<p>	Кол-во <?php echo $cart['items']['quantity']?></p>
	<p>	Цена <?php echo $cart['items']['price']?></p>
	<a href="/delete.php" name="ids">Удалить</a>
	<h2>Итого к оплате: <?php echo $cart['sum']?></h2> 


<?php var_dump($cart) ?>

<?php //В списке вывода товара напротив каждого файла делаем ссылку на удаление. ?>

</body>
</html>

