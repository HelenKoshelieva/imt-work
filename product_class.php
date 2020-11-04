<?php 
session_start () ;



class Products {
	public $id;
	public $name;
	public $price;
	public function add_product ($id,$name,$price)
			{
				$this->id=$id;
				$this->name=$name;
				$this->price=$price;
			}
				}

var_dump(Products)


?>
