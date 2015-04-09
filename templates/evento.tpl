
<section class="padding-40 page-tree-bg" >  
    <h3 class="page-tree-text  " >      
{if isset($e)}
    {$e->get('tipoFiesta')}
{else}
    Eventos
 {/if}   
</h3>  
</section><!--page-tree end here-->

<div class="space-70"></div>
<div class="container">
{if isset($eventos ) & !isset($e)}
    
    

<div class="row">  
    
      
    <div class="col-md-12 text-center">            
                   
	<div id="grid" class="row">
            <div class="grid">  
                {section loop=$eventos name=i}
		<div class="col-md-6 margin-btm-40 mix_all" style="display: inline-block; opacity: 1;"> 
		
                    <div class="portfolio-sec">        

                        <figure class="effect-zoe">                  
                            <div class="portfolio-thumnail">   
                            <img width="1140" height="550" src="./images/{$eventos[i]->get(imgPrincipal)}" class="img-responsive wp-post-image" alt="">    
                            </div>                               
                            <figcaption> <h2>{$eventos[i]->get('tipoFiesta')}</h2> <p>{$eventos[i]->get('miniDescripcion')}</p>
                                <h4><a href="{$gvar_global}evento.php?option=mostrar&tipo={$eventos[i]->get('tipoFiesta')}" class="btn theme-btn-default btn-lg"></a></h4>
                            </figcaption> 
                        </figure>                               
                    </div>                           
		</div> 
              
            {/section}
            </div>
        </div>
    </div>
</div><!--row--><!--portfolio container end-->

<!--row--><!--portfolio container end-->

    
    
    
{else}
    
    <h3 class="heading-sec">{$e->get('tipoFiesta')}</h3>
    
    <div class="blog-post-detail">
    <p class =>{$e->get('descripcion')}</p>
    </div>
    
    <div class="row">
    <div class="col-md-12">
      <div class="grid blog-columns-layout">
          <div class="col-md-3">
              <a href="./images/{$e->get('imgPrincipal')}" data-lightbox="roadtrip">
                    <img width="1140" height="550" src="./images/{$e->get('imgPrincipal')}" class="img-responsive wp-post-image" alt="" />
              </a>      
          </div>
          {section loop=$imagenes name=i}
                <div class="col-md-3">
                    <a href="./images/{$imagenes[i]->get('nombre')}" data-lightbox="roadtrip">
                    <img width="1140" height="550" src="./images/{$imagenes[i]->get('nombre')}" class="img-responsive wp-post-image " alt="" />
                    </a>
                </div>
                
          {/section}
                
      </div>
    </div>
  </div>
    
    
    <div class="space-40"></div>
    <h3 class="hover-color"> Servicios</h3>
    <div class="space-10"></div>
    <div class="row"> 
        <div class="col-md-12">
            
                <div class="grid blog-columns-layout">
                    {section loop=$servicios name=i}
                    <div class="col-md-4">                  
                        <figure class="effect-zoe">
                            <img width="1140" height="550" src="./images/{$servicios[i]->get('imgIcono')}" class="img-responsive wp-post-image" alt="9" /> 
                            <figcaption> 
                                <h3> {$servicios[i]->get('nombre')} </h3>
                                {*<a href="http://webschool.co.in/wpbizwrap/natus-error-sit-dolor/">View more</a> *}
                            </figcaption>
                        </figure>
                    </div>
                    {/section}
                    
                            
                </div> 
        </div>
    </div>

    
    
    
{/if}
</div>


<div class="space-70"></div>



