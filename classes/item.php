<?php

class item extends object_standard
{
	//attribute variables
	protected $evento;
	protected $servicio;
	
	
	//components
	var $components = array();
	
	//auxiliars for primary key and for files
	var $auxiliars = array();
	
    
        //data about the attributes
	public function metadata()
	{
		return array("evento" => array("foreign_name" => "it_e","foreign" => "evento", "foreign_attribute" => "id"), "servicio" => array("foreign_name" => "it_s","foreign" => "servicio", "foreign_attribute" => "id")); 
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
				case "it_e":
				return array("evento");
				break;
			}
			break;
			
                        case "servicio":
			switch($rel_name)
			{
				case "it_s":
				return array("servicio");
				break;
			}
			break;
                    
                    
			default:
			break;
		}
	}
}

?>
