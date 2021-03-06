<?php

/**
 * Project:     Framework G - G Light
 * File:        db.php
 * 
 * For questions, help, comments, discussion, etc., please join to the
 * website www.frameworkg.com
 * 
 * @link http://www.frameworkg.com/
 * @copyright 2013-02-07
 * @author Group Framework G  <info at frameworkg dot com>
 * @version 1.2
 */

class db
{
    var $server = C_DB_SERVER; //DB server
	var $user = C_DB_USER; //DB user
    var $pass = C_DB_PASS; //DB password
	var $db = C_DB_DATABASE_NAME; //DB database name
	var $limit = C_DB_LIMIT; //DB limit of elements by page
	var $cn;
	var $numpages;
	
	public function db(){}
	
	//connect to database
	public function connect()
	{
		$this->cn = mysqli_connect($this->server, $this->user, $this->pass);
		if(!$this->cn) {die("Failed connection to the database: ".mysqli_error($this->cn));}
		if(!mysqli_select_db($this->cn,$this->db)) {die("Unable to communicate with the database $db: ".mysqli_error($this->cn));}
		mysqli_query($this->cn,"SET NAMES utf8");
	}
	
	//function for doing multiple queries
	public function do_operation($operation, $class = NULL)
	{
		$result = mysqli_query($this->cn, $operation) ;
		if(!$result) {$this->throw_sql_exception($class);}	
	}
	
	//function for obtain data from db in object form
	private function get_data($operation)
	{		
		$data = array(); 
		$result = mysqli_query($this->cn, $operation) or die(mysqli_error($this->cn));
		while ($row = mysqli_fetch_object($result))
		{
			array_push($data, $row);
		}
		return $data;
	}
	
	//throw exception to web document
	private function throw_sql_exception($class)
    {
		$errno = mysqli_errno($this->cn); $error = mysqli_error($this->cn);
		$msg = $error."<br /><br /><b>Error number:</b> ".$errno;
        throw new Exception($msg);
    }
	
	//for avoid sql injections, this functions cleans the variables
	private function escape_string(&$data)
	{
		if(is_object($data))
		{
			foreach ($data->metadata() as $key => $attribute)
			{if(!is_empty($data->get($key))){$data->set($key,mysqli_real_escape_string($this->cn,$data->get($key)));}}
		}
		else if(is_array($data))
		{
			foreach ($data as $key => $value) 
			{if(!is_array($value)){$data[$key]=mysqli_real_escape_string($this->cn,$value);}}
		}
	}
	
	//function for add data to db
	public function insert($options,$object) 
	{
		switch($options['lvl1'])
		{																																																																																													
			case "user":
			switch($options['lvl2'])
			{
				case "normal":
					//
					break;
			}
			break;
                        case "mensaje":
			switch($options['lvl2'])
			{
				case "normal":
                                    $nombre=mysql_real_escape_string($object->get('nombre'));
                                    $email=mysql_real_escape_string($object->get('email'));
                                    $telefono=mysql_real_escape_string($object->get('telefono'));
                                    $asunto=  mysql_real_escape_string('asunto');
                                    $mensaje=mysql_real_escape_string($object->get('mensaje'));
                                    $this->do_operation("INSERT INTO mensaje (nombre, telefono, email, asunto, mensaje, fecha) VALUES ('$nombre', '$telefono', '$email', '$asunto', '$mensaje' , CURRENT_TIMESTAMP);");    

				break;
			}
			break;
			
			default: break;
		}
	}
	
	//function for edit data from db
	public function update($options,$object) 
	{
		switch($options['lvl1'])
		{																																																																																																		
			case "user":
			switch($options['lvl2'])
			{
				case "normal":
					//
					break;
			}
			break;
			
			default: break;
		}
	}
	
	//function for delete data from db
	public function delete($options,$object)
	{
		switch($options['lvl1'])
		{																																																																																												
			case "user":
			switch($options['lvl2'])
			{
				case "normal": 
					//
					break;
			}
			break;
			
			default: break;			  
		}
	}
	
	//function that returns an array with data from a operation
	public function select($option,$data)
	{       
            
		$info = array();
		switch($option['lvl1'])
		{																																																																																																										
			case "user":
			switch($option['lvl2'])
			{
				case "all": 
					//
					break;
			}
			break;
                    
                    
                        case "evento":
			switch($option['lvl2'])
			{
				case "all": 
                                 
                                  
                                $info=$this->get_data("SELECT * FROM evento;"); 
                                break;
                                case "one": 
                                $id=mysql_real_escape_string($data['id']);	
                                $info=$this->get_data("SELECT * FROM evento where id='$id';"); 
                                break;
                                case "one_tipo":
                                    
                                //$tipoFiesta = mysql_real_escape_string($data['tipoFiesta']);
                                  $tipoFiesta =$data['tipoFiesta']; 
                                  
                                $info=$this->get_data("SELECT * FROM evento where tipoFiesta='$tipoFiesta';"); 
                                ;
                                
                                break;
			}
			break;
                        
                        case "blog":
			switch($option['lvl2'])
			{
				case "all": 
                                $info=$this->get_data("SELECT * FROM blog ORDER BY fecha DESC;"); 
                                break;
                                case "one": 
                                $id=$data['nombre'];	
                                $info=$this->get_data("SELECT * FROM blog where nombre='$id';"); 
                                
                                
                                break;
                                
                                case "aleatorio": 
                                    
                                $info=$this->get_data("SELECT * FROM blog ORDER BY RAND() LIMIT 3;"); 
                                break;    
                                
			}
			break;
                    
                    
                    
                        case "servicio":
			switch($option['lvl2'])
			{
				case "all": 
                                $info=$this->get_data("SELECT * FROM servicio;"); 
                                break;
                                case "by_evento":
                                    //$evento=mysql_real_escape_string($data['evento']);
                                    $evento = $data['evento'];
                                    $info=$this->get_data("SELECT s.* FROM servicio as s, item as i where i.evento='$evento' and s.id=i.servicio"); 
                                    
                                    break;
			}
			break;
                    
                        case "imagen":
			switch($option['lvl2'])
			{
				case "all": 
                                $info=$this->get_data("SELECT * FROM imagen;"); 
                                break;
                                case "by_evento":
                                    $evento=$data['evento'];	
                                    
                                    $info=$this->get_data("SELECT * FROM imagen as i where i.evento='$evento' ");
                                    
                                break;
                                case "by_servicio":
                                    $servicio=$data['servicio'];		
                                    $info=$this->get_data("SELECT * FROM imagen as i where i.servicio='$servicio' "); 
                                break;
                                
                                case "by_blog":
                                    $blog=$data['blog'];		
                                    $info=$this->get_data("SELECT * FROM imagen as i where i.blog='$blog' "); 
                                break;
			}
			break;
			
			default: break;
		}
		return $info;
	}
	
	//close the db connection
	public function close()
	{
		if($this->cn){mysqli_close($this->cn);}
	}
	
}

?>