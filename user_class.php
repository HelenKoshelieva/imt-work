<?php  
session_start () ;
/**
 * логин, пароль, имя, фамилию, роль.
 */
class user 
{
	public $login;
	public $pasword;
	public $name;
	public $surname;
	public $role;

	public function __construct ()
			{}
}


$adduser= new user;
$adduser->login='helen';

var_dump($adduser);
?>