<?php

class imagen extends object_standard
{
	//attribute variables
	protected $id;
	protected $nombre;
	protected $evento;
        protected $blog;
        protected $servicio;
	
	//components
	var $components = array();
	
	//auxiliars for primary key and for files
	var $auxiliars = array();
	
	//data about the attributes
	public function metadata()
	{
		return array("id" => array(), "nombre" => array(), "evento" => array("foreign_name" => "i_e","foreign" => "evento", "foreign_attribute" => "id"), "blog" => array("foreign_name" => "i_b","foreign" => "blog", "foreign_attribute" => "id"), "servicio"=> array("foreign_name" => "i_s","foreign" => "servicio", "foreign_attribute" => "id") ); 
	}

	public function primary_key()
	{
		return array("id");
	}
	
	public function relational_keys($class, $rel_name)
	{
		switch($class)
		{
			case "evento":
			switch($rel_name)
			{
				case "i_e":
				return array("evento");
				break;
			}
			break;
			
                        case "servicio":
			switch($rel_name)
			{
				case "i_s":
				return array("servicio");
				break;
			}
			break;
                        case "blog":
			switch($rel_name)
			{
				case "i_b":
				return array("blog");
				break;
			}
			break;
                    
                    
			default:
			break;
		}
	}
}

?>
