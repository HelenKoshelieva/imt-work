<?php 
session_start () ;

$_SESSION['delete']= $ids;
$productcardid=$_SESSION['card']['items']['id'];
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
<h2>Вы заказали продукт <?php echo $products[$_SESSION['cart']['items']['id']]['name']?></h2>
	<p>	Кол-во <?php echo $_SESSION['cart']['items']['quantity']?></p>
	<p>	Цена <?php echo $_SESSION['cart']['items']['price']?></p>
	<a href="/delete.php?ids=<?php echo $_SESSION['cart']['items']['price'];?>">Удалить</a>
	<h2>Итого к оплате: <?php echo $_SESSION['cart']['sum']?></h2> 

array(2) { ["sum"]=> int(21500) ["items"]=> array(3) { ["id"]=> string(2) "43" ["quantity"]=> string(3) "500" ["price"]=> int(43) } 
<?php var_dump($_SESSION['cart']) ?>

<?php //В списке вывода товара напротив каждого файла делаем ссылку на удаление. ?>

</body>
</html>

