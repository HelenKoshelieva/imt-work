<?php 
session_start () ;
include "user_class.php";

$users = [
['name'=>'Василий','surname'=>'Лоханкин','login' => 'Vasisualiy', 'password' => '12345', 'lang' => 'ru','role'=>'admin'],
['name'=>'Афанасий','surname'=>'Цукерберг','login' => 'Afanasiy', 'password' => '54321', 'lang' => 'en','role'=>'client'],
['login' => 'Petro', 'name'=>'Петр','surname'=>'Инкогнито' ,'password' => 'EkUC42nzmu', 'lang' => 'ua','role'=>'maneger'],
['login' => 'Pedrolus', 'name'=>'Педро','surname'=>'Миланов', 'password' => 'Cogito_ergo_sum', 'lang' => 'it','role'=>'client'],
['login' =>'Sasha','name'=>'Александр','surname'=>'Александров',  'password' => 'Ignorantia_non_excusat ' ],];

?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<form method="POST"> 
  
<p><input name="login">
<input type="password" name="pass"></p>

<p><input type="submit" value="Отправить"></p>


</form>
<?php 

$_SESSION['log']=$_POST['login'];
$_SESSION['pass']=$_POST['pass'];
echo $log.' '. $pass;

//if (isset ($log)){
//	if $log==$users['login']{//&&$pass==$users['password']
//		echo 'hello'}
//	else echo 'net hello'

//}
if (isset ($_SESSION['log'])){
			foreach ($users as $key => $value) {
				if (($users[$key]['login']==$_SESSION['log'])&&($users[$key]['password']==$_SESSION['pass']))
	     				exit("<meta http-equiv='refresh' content='0; url= /cabinet.php'>");;}
echo "<h2>".'Логин или пароль не верный'."</h2>";
}
?>

<?php var_dump($_SESSION) ?>
</body>
</html>