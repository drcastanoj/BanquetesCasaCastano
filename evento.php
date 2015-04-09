<?php

require('configs/include.php');

class c_evento extends super_controller {
    
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
	
	public function display()
	{       
                
                
                $eventos= $this->all();
                $blog3 = $this->muestra_blog();
                $this->engine->assign('blog3',$blog3);
                $this->engine->assign('title',$this->gvar['n_index']);
                $this->engine->assign('eventos',$eventos);
                
		$active = "eventos";
                $this->engine->assign('active',$active);
		$this->engine->display('header2.tpl');
		$this->engine->display('evento.tpl');
		$this->engine->display('footer2.tpl');
	}
        
        public function mostrar(){
            $tipo = $this->get->tipo;
            $options['evento']['lvl2']="one_tipo";
            $cod1['evento']['tipoFiesta']=$tipo;
            
            $this->orm->connect();
            $this->orm->read_data(array("evento"),$options,$cod1);
            $e = $this->orm->get_objects("evento");
            $this->orm->close();
            
            $options2['servicio']['lvl2']="by_evento";            
            $cod2['servicio']['evento']=$e[0]->get('id');
            
             $options3['imagen']['lvl2']="by_evento";            
            $cod3['imagen']['evento']=$e[0]->get('id');
            
            $this->orm->connect();
            $this->orm->read_data(array("servicio"),$options2,$cod2);
            $servicios = $this->orm->get_objects("servicio"); 
            $this->orm->read_data(array("imagen"),$options3,$cod3);
            $imagenes = $this->orm->get_objects("imagen");
            
            $this->orm->close();
            
            $eventos = $this->all();
            $blog3 = $this->muestra_blog();
            $this->engine->assign('blog3',$blog3);
            $active = "eventos";
            $this->engine->assign('active',$active);
            
            $this->engine->assign('title',$this->gvar['n_index']);
            $this->engine->assign('e',$e[0]);
            
            $this->engine->assign('servicios',$servicios);
            $this->engine->assign('imagenes',$imagenes);
            $this->engine->assign('eventos',$eventos);
                
		
            $this->engine->display('header2.tpl');
            $this->engine->display('evento.tpl');
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
}

$call = new c_evento();
$call->run();

?>