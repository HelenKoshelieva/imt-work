<?php 
session_start () ;

$_SESSION['delete']= $ids;

 include "card.php"; 

$products = [
2=>['name'=>'товар 1', 'price'=>2, 'id'=>1],
7=>['name'=>'товар 2', 'price'=>7, 'id'=>2],
43=>['name'=>'товар 3', 'price'=>43, 'id'=>3],
45=>['name'=>'товар 4', 'price'=>45, 'id'=>4],
46=>['name'=>'товар 5', 'price'=>46, 'id'=>5],
47=>['name'=>'товар 6', 'price'=>47, 'id'=>6],];?>

<!DOCTYPE html>
<html>
<head>
	<title>
	</title>
</head>
<body>
<h1>Ваш заказ</h1>
<h2>Вы заказали: </h2>
		<?php foreach ($_SESSION['cart']['items'] as $key => $value) {

		$prodid=$_SESSION['cart']['items'][$key]['id'];
		$sum+=$_SESSION['cart']['items'][$key]['sum'];?>

<p><?php echo $products[$prodid]['name']?></p>
<p>	Кол-во <?php echo $_SESSION['cart']['items'][$key]['count']?></p>
<p>	Цена <?php echo $_SESSION['cart']['items'][$key]['price']?></p>
<p><a href="/list.php?ids=<?php echo $key?>">Удалить</a> </p>
		<?php }?>

		<?php 
		if (isset($_GET['ids'])){
		$_SESSION['cart']['items'][($_GET['ids'])]=delete($_GET['ids']);}?>


<h2>Итого к оплате: <?php echo $sum?></h2>

<?php ?>


</body>
</html>

