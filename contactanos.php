<?php

require('configs/include.php');

class c_contacnos extends super_controller {
    
    public function enviar_mensaje(){
        $mensaje = new mensaje($this->post);
        
        $result = array();
        
        if(is_empty($mensaje->get('nombre')) & is_empty($mensaje->get('email'))){
            $result['exito']=false;
            $result['error'] = 'Debe ingresar un nombre y un email';
        }else{
            $this->orm->connect();
            $this->orm->insert_data("normal",$mensaje);
            $this->orm->close();
            
            $result['exito'] = true;
            $result['nombre'] = $mensaje->get('nombre');
        }
         
        
        
        echo json_encode($result);
    }
    
    
    public function prueba(){
        
        
    }

    public function display()
	{       
                
            
                $eventos =  $this->all();
                $blog3= $this->muestra_blog();
                $this->engine->assign('title',$this->gvar['n_index']);
                
               
                
                $this->engine->assign('eventos',$eventos);
                $this->engine->assign('blog3',$blog3);
                $active = "contactanos";
                $this->engine->assign('active',$active);
		
		$this->engine->display('header2.tpl');
		$this->engine->display('contactanos.tpl');
                $this->engine->display('footer2.tpl');
                
	}
	
	public function run()
                
	{
            
            
        
		try {
                    
                        if (isset($this->get->option)){
                            
                            
                        $this->{$this->get->option}();

                        }else{
                            
                            $this->display();
                        }
                    
                    }
                    catch (Exception $e) 
		{
                        
			$this->error=1; $this->msg_warning=$e->getMessage();
			$this->engine->assign('type_warning',$this->type_warning);
			$this->engine->assign('msg_warning',$this->msg_warning);
			$this->temp_aux = 'message.tpl';
		}    
	}
        
        public function all(){
                
                $options['evento']['lvl2']="all";
                $this->orm->connect();
                $this->orm->read_data(array("evento"),$options);
                $eventos = $this->orm->get_objects("evento");
                $this->orm->close();
                
                return $eventos;
        }
        
        public function muestra_blog(){
            
             $options['blog']['lvl2']="aleatorio";
                $this->orm->connect();
                $this->orm->read_data(array("blog"),$options);
                $blog3 = $this->orm->get_objects("blog");
                $this->orm->close();
                
                return $blog3;
            
        }
        
}

$call = new c_contacnos();
$call->run();

?>
