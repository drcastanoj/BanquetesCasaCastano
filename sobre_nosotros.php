<?php

require('configs/include.php');

class c_sobre_nosotros extends super_controller {
    
    public function enviar_mensaje(){
        
        $this->engine->display('header2.tpl');
		$this->engine->display('index.tpl');
                
		$this->engine->display('footer2.tpl');
        
        
    }

        public function display()
	{       
                
            
                $eventos =  $this->all();
                $blog3= $this->muestra_blog();
                $this->engine->assign('title',$this->gvar['n_index']);
                
                $active = "contactanos";
                $this->engine->assign('active',$active);
                
                $this->engine->assign('eventos',$eventos);
                $this->engine->assign('blog3',$blog3);
		
		$this->engine->display('header2.tpl');
		$this->engine->display('sobre_nosotros.tpl');
                $this->engine->display('footer2.tpl');
	}
	
	public function run()
	{
		$this->display();
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

$call = new c_sobre_nosotros();
$call->run();

?>