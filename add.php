<?php 
session_start () ;
include "card.php" ;

include "Add_class.php" ;

$products = [
2=>['name'=>'товар 1', 'price'=>2, 'id'=>1],
7=>['name'=>'товар 2', 'price'=>7, 'id'=>2],
43=>['name'=>'товар 3', 'price'=>43, 'id'=>3],
45=>['name'=>'товар 4', 'price'=>45, 'id'=>4],
46=>['name'=>'товар 5', 'price'=>46, 'id'=>5],
47=>['name'=>'товар 6', 'price'=>47, 'id'=>6],];
?>

<html>
<head></head>
<body>
<h1>Для покупки, добавьте товар в корзину</h1>

<form>

<select name="product">
	<option value='0' >Выберите товар</option>
	<?php foreach($products as $key => $product) {?>
	<option value="<?php echo $key?>"><?php  echo $product['name']?> </option>
	<?php }?>
</select>
<p>Количество: <input type="text" name="quantity" /></p>

<p><input type="submit" value="Отправить" </p>


<?php 
if (isset($_GET['product'])){
					$_SESSION['cart']['items'][]=get_object_vars(new Card($_GET['product'],$_GET['quantity'],$products[$_GET['product']]['price']));
}?>
</form>

<a href="/list.php">К корзине</a>
 
</html>

