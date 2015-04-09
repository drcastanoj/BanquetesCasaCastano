<?php

class mensaje extends object_standard
{
	//attribute variables
	protected $id;
	protected $nombre;
	protected $email;
        protected $telefono;
        protected $asunto;
        protected $mensaje;
        protected $fecha;


        //components
	var $components = array();
	
	//auxiliars for primary key and for files
	var $auxiliars = array();
	
	//data about the attributes
	public function metadata()
	{
		return array("id" => array(), "nombre" => array(), "email" => array(), "telefono" => array(), "asunto"=> array(), "mensaje"=>array(), "fecha" =>array() ); 
	}

	public function primary_key()
	{
		return array("id");
	}
	
	public function relational_keys($class, $rel_name)
	{
		switch($class)
		{
			default:
			break;
		}
	}
}

?>
