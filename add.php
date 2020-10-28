<?php 
session_start () ;



$_SESSION['Product']= $product;
$_SESSION['quantity']= $quantity;

include "card.php" 

?>

<html>
<head></head>
<body>
<h1>Для покупки, добавьте товар в корзину</h1>

  <form action="list.php" method="post">
   <p><select name="product">
    <option value="товар 0">Выберите товар</option>
    <option value="2">товар 1</option>
    <option value="7">товар 2</option>
    <option value="43">товар 3</option>
 <p>Количество: <input type="text" name="quantity" /></p>

<p><input type="submit" value="Отправить"></p>


  </form>
 
<?php //при отправке формы добавляем товар в корзину в сессию с помощью вызова функции из файла cart.php ?>
</body>
</html>

