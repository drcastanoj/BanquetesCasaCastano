<?php

require('configs/include.php');

class c_servicios extends super_controller {
	
	public function display()
	{       
                
            
                $options['servicio']['lvl2']="all";
                
                $this->orm->connect();
                $this->orm->read_data(array("servicio"),$options);
                $servicios = $this->orm->get_objects("servicio");
                $this->orm->close();
                $this->engine->assign('title',$this->gvar['n_index']);
                
                $eventos = $this->all();
                $this->engine->assign('eventos',$eventos);
                $this->engine->assign('servicios',$servicios);
                
                $blog3 = $this->muestra_blog();
                $this->engine->assign('blog3',$blog3);
                
                
                $active = "servicios";
                $this->engine->assign('active',$active);
		$this->engine->display('header2.tpl');
		$this->engine->display('servicio.tpl');
		$this->engine->display('footer2.tpl');
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
        
        

        public function run()
	{
            $this->display();        
	}
}

$call = new c_servicios();
$call->run();

?>
