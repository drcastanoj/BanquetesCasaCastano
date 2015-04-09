<?php

class evento extends object_standard
{
	//attribute variables
	protected $id;
	protected $tipoFiesta;
	protected $imgPrincipal;
        protected $descripcion;
        protected $imgIcono;
        protected $miniDescripcion;


        //components
	var $components = array();
	
	//auxiliars for primary key and for files
	var $auxiliars = array();
	
	//data about the attributes
	public function metadata()
	{
		return array("id" => array(), "tipoFiesta" => array(), "imgPrincipal" => array(), "imgIcono" => array(), "descripcion"=> array(), "miniDescripcion"=>array() ); 
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
