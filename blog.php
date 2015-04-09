<?php
require('configs/include.php');

class c_blog extends super_controller {

    public function display() {


        $eventos = $this->all();
        $blog3 = $this->muestra_blog();

        $options['blog']['lvl2'] = "all";
        $this->orm->connect();
        $this->orm->read_data(array("blog"), $options);
        $blogs = $this->orm->get_objects("blog");
        $this->orm->close();
        
        
        $this->engine->assign('title', $this->gvar['n_index']);
        $active = "blog";
        $this->engine->assign('active',$active);

        
        $this->engine->assign('blogs',$blogs);
        
        $this->engine->assign('blog3', $blog3);
        $this->engine->assign('eventos', $eventos);

        $this->engine->display('header2.tpl');
        $this->engine->display('blog.tpl');
        
        $this->engine->display('footer2.tpl');
    }

    public function mostrar() {

        $nombre = $this->get->nombre;
        $options['blog']['lvl2'] = "one";
        $cod1['blog']['nombre'] = $nombre;

        $this->orm->connect();
        $this->orm->read_data(array("blog"), $options, $cod1);
        $b = $this->orm->get_objects("blog");

        $options3['imagen']['lvl2'] = "by_blog";
        $cod3['imagen']['blog'] = $b[0]->get('id');

        $this->orm->read_data(array("imagen"), $options3, $cod3);
        $imagenes = $this->orm->get_objects("imagen");

        $this->orm->close();
        
        

        $eventos = $this->all();
        $blog3 = $this->muestra_blog();
        $this->engine->assign('title', $this->gvar['n_index']);
        $active = "blog";
        $this->engine->assign('active',$active);


        $this->engine->assign('b', $b[0]);
        $this->engine->assign('imagenes', $imagenes);
        $this->engine->assign('eventos', $eventos);
        $this->engine->assign('blog3', $blog3);

        $this->engine->display('header2.tpl');
        $this->engine->display('blog.tpl');
        $this->engine->display('footer2.tpl');
    }

    public function run() {
        try {
            if (isset($this->get->option)) {
                
                $this->{$this->get->option}();
                
            } else {
                
                $this->display();
            }
        } catch (Exception $e) {
            $this->error = 1;
            $this->msg_warning = $e->getMessage();
            echo $e->getMessage();
            $this->engine->assign('type_warning', $this->type_warning);
            $this->engine->assign('msg_warning', $this->msg_warning);
            $this->temp_aux = 'message.tpl';
        }
    }

    public function all() {

        $options['evento']['lvl2'] = "all";
        $this->orm->connect();
        $this->orm->read_data(array("evento"), $options);
        $eventos = $this->orm->get_objects("evento");
        $this->orm->close();

        return $eventos;
    }

    public function muestra_blog() {

        $options['blog']['lvl2'] = "aleatorio";
        $this->orm->connect();
        $this->orm->read_data(array("blog"), $options);
        $blog3 = $this->orm->get_objects("blog");
        $this->orm->close();

        return $blog3;
    }

}

$call = new c_blog();
$call->run();
?>
