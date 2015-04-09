

<div class="space-50"></div>
        <div class="container"><div class="row">
            <div class="col-md-12 text-center">
                <img width="500" height="350" src="./images/logo2.png">
            </div>
            </div>
        </div>
<div class="space-70"></div>
    
    <div class="container">
        <div class="row">
            <div class="col-md-12">           
             <h3 class="heading-sec">Eventos</h3>
            </div>
        </div>
        <div class="row">
                
            {section loop= $eventos name=i}
             <!--portfolio item -->
             <div class="col-md-4 col-sm-6 margin-btm-40">
                 <div class="portfolio-sec">
                     <div class="portfolio-thumnail">
                         <a href="{$gvar.l_global}evento.php?option=mostrar&tipo={$eventos[i]->get('tipoFiesta')}">
             <img width="300" height="144" src="./images/{$eventos[i]->get('imgPrincipal')}" class="img-responsive wp-post-image" alt="">
                         </a>
                     </div>
                     <div class="portfolio-desc text-center">
                         <h4 class="portfolio-post-title">{$eventos[i]->get('tipoFiesta')}</h4>
                         <span class="portfolio-post-cat">{$eventos[i]->get('miniDescripcion')}</span>
                         <h4><a href="{$gvar.l_global}evento.php?option=mostrar&tipo={$eventos[i]->get('tipoFiesta')}" class="btn theme-btn-default btn-lg">Mas Detalles</a></h4>
                     </div>
                 </div>
             </div>
             {/section}
                    
                
        </div>
    </div>
<div class="space-70"></div>

       
