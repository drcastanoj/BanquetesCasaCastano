
<div id="footer">

    <div class="container">

        <div class="row">

            <div class="col-md-4 margin-btm-20">

                <div id="text-3" class="widget footer-col widget_text">
                    <h3 class="widgettitle">Banquetes Casa Castaño</h3>		
                    <div class="textwidget">Somos una empresa compretida con sus momentos especiales</div>
                </div><div class="space-20"></div>
                <p>Direccion : Niquia - Diagonal 61 # 40a-108</p>
                <p>Bello - Antioquia</p>
                <p>Telefono: +57 (4) 481 34 70</p>
                <p>Celular : (+57) 314 782 2097 - 301 591 7006</p>
                <div id="bw_social_widget-3" class="widget footer-col widget_bw_social_widget"><div class="sidebar-box">
                        
                        <h3 class="widgettitle">Siguenos en </h3>
                        
                        <ul class=" list-inline social-btn">
                            <li><a href="http://facebook.com/BanquetesCasaCastano" target="_blank">
                                    <i title="facebook" class="ion-social-facebook"></i></a>
                            </li>
                           
                        </ul>

                    </div></div>
            </div><!--col-4 end-->

            

            <div class="col-md-4 margin-btm-20">
                
                 <div id="recent-posts-3" class="widget footer-col widget_recent_entries">
                 <h3 class="widgettitle">Conoce Nuestro Trabajo</h3>
                     
                {section loop = $blog3 name=i}
                    <div class="recent">
                        <span>
                            <img width="150" height="150" src="./images/{$blog3[i]->get('imgPrincipal')}" class="img-responsive wp-post-image" alt="1"> 
                        </span>
                     <p><a class="hover-color" href="{$gvar.l_global}blog.php?option=mostrar&nombre={$blog3[i]->get('nombre')}">
                            {$blog3[i]->get('nombre')} </a></p>
                    </div>
                
                {/section}
                </div>
           
            </div><!--latest post col end-->

            <div class="col-md-4">

                <div id="bw_contact_widget-2" class="widget footer-col widget_bw_contact_widget">
                    <div class="sidebar-box">
                        <h3 class="widgettitle">Cotice su Fiesta</h3>
                        <div class="wpcf7" id="wpcf7-f387-o1">
                                <div class="screen-reader-response"></div>
                                <form action="{$gvar.l_global}contactanos.php?option=enviar_mensaje" method="post" class="wpcf7-form" novalidate="novalidate">

                                <div class="row">
                                            <div class="col-md-12">
                                                <span class="wpcf7-form-control-wrap your-name"><input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" aria-required="true" aria-invalid="false" placeholder="Nombre.." required></span>
                                            </div>
                                             <div class="col-md-6">
                                                 <span class="wpcf7-form-control-wrap your-phone"><input type="number" name="your-phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email form-control" aria-required="true" aria-invalid="false" placeholder="Telefono.." required></span>
                                            </div>
                                            <div class="col-md-6">
                                                <span class="wpcf7-form-control-wrap your-email"><input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email form-control" aria-required="true" aria-invalid="false" placeholder="Email.."  required></span>
                                            </div>
                                            <div class="col-md-12">
                                                <span class="wpcf7-form-control-wrap your-subject"><input type="text" name="your-subject" value="" size="40" class="wpcf7-form-control wpcf7-text form-control" aria-invalid="false" placeholder="Asunto.." required></span>
                                            </div>
                                            <div class="col-md-12">
                                                <span class="wpcf7-form-control-wrap your-message"><textarea name="your-message" cols="40" rows="3" class="wpcf7-form-control wpcf7-textarea form-control" aria-invalid="false" placeholder="Mensaje.." required></textarea></span>
                                            </div>
                                            <div class="col-md-12 text-right">
                                            <input type="submit" value="Enviar Mensaje" class="wpcf7-form-control wpcf7-submit btn btn-lg btn-white"><img class="ajax-loader" src="./images/ajax-loader.gif" alt="Sending ..." style="visibility: hidden;">
                                            </div>
                                            </div>
                               {* <div class="wpcf7-response-output wpcf7-display-none"></div>*}

                                </form>
    
                        </div>
                            
                    </div>
                        
                </div>
               
            </div><!--get in touch col end-->

        </div><!--footer main row end-->  

         <div class="row">
            <div class="col-md-12 text-center ">
                <a href="{$gvar.l_global}"> <img width="300" height="200" src="./images/logo blanco.png" alt=""></a>
            </div>

        </div><!--footer copyright row end-->

    </div><!--container-->

</div><!--footer main end-->

<script type="text/javascript" src="./js/jquery.form.min.js"></script>
<script type="text/javascript">
/* <![CDATA[ */

/* ]]> */
</script>
<script type="text/javascript" src="./js/scripts.js"></script>
<script type="text/javascript" src="./js/app.js"></script>
<script type="text/javascript" src="./js/comment-reply.min.js"></script>



   
    {literal}
    <script defer src="./js/jquery.flexslider.js"></script>

  <script type="text/javascript">
    
            // Can also be used with $(document).ready()
        $(window).load(function() {
          $('.flexslider').flexslider({
            animation: "slide"
          });
        });
  </script>


    {/literal}



<script type="text/javascript" src="./js/cache.php"></script></body>
{*para galeria*}
        
	<script src="js/lightbox.js"></script>*}
       
        <link rel="stylesheet" href="css/lightbox.css">
</html>