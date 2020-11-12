<?php 
session_start () ;
include "user_class.php";

$users = [
['name'=>'Василий','surname'=>'Лоханкин','login' => 'Vasisualiy', 'password' => '12345', 'lang' => 'ru','role'=>'admin'],
['name'=>'Афанасий','surname'=>'Цукерберг','login' => 'Afanasiy', 'password' => '54321', 'lang' => 'en','role'=>'client'],
['login' => 'Petro', 'name'=>'Петр','surname'=>'Инкогнито' ,'password' => 'EkUC42nzmu', 'lang' => 'ua','role'=>'maneger'],
['login' => 'Pedrolus', 'name'=>'Педро','surname'=>'Миланов', 'password' => 'Cogito_ergo_sum', 'lang' => 'it','role'=>'client'],
['login' =>'Sasha','name'=>'Александр','surname'=>'Александров',  'password' => 'Ignorantia_non_excusat ' ],];

if (isset ($_SESSION['log'])){
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<h1>Helllo <?php 
			foreach ($users as $key => $value) {
				if  ($_SESSION['log']==$users[$key]['login']) 
					echo $users[$key]['name'].' '.$users[$key]['surname'].' Ваша роль '.$users[$key]['role'];
};}
else (exit("<meta http-equiv='refresh' content='0; url= /login.php'>"));
?>
</h1>

</form>

<?php var_dump($_SESSION) ?>

</body>
</html>