




<div class="space-70"></div>
<div class="container">
{if isset($blogs)}

    
    <div class="row">
        {section loop=$blogs name=i }
            <div class="col-md-6"> 
                <div class="blog-post-section">      
                    <div class="blog-post-img">
                        <a href="{$gvar.l_global}blog.php?option=mostrar&nombre={$blogs[i]->get('nombre')}" >
                        <img width="1140" height="550" src="./images/{$blogs[i]->get('imgPrincipal')}" class="img-responsive wp-post-image" alt="" />    
                        </a>
                    </div>     
                    <div class="blog-post-header">  
                        <h3><a href="{$gvar.l_global}blog.php?option=mostrar&nombre={$blogs[i]->get('nombre')}" class="hover-color">{$blogs[i]->get('nombre')}</a> </h3>  
                    </div>                 
                    <div class="blog-post-info">  
                        <span> {$blogs[i]->get('fecha')} </span> 
                    </div>            
                    <div class="blog-post-detail"> 
                        <p>{$blogs[i]->get('descipcion')}</p>
                    </div>  
                    <div class="blog-post-more text-right">  
                       <a href="{$gvar.l_global}blog.php?option=mostrar&nombre={$blogs[i]->get('nombre')}" class="btn theme-btn-default btn-lg">Continua Leyendo</a> 
                    </div>                    
                </div>            <!--blog post section end-->   
            </div><!--blog content-->      
         
     {/section}
     </div>
<!--blog full page content end here-->
{else}
   
    <div class="row">
    
      <div class="grid blog-columns-layout ">
          <div class="col-md-4">
              <a href="./images/{$b->get('imgPrincipal')}" data-lightbox ="roadtrip">
                    <img width="1140" height="550" src="./images/{$b->get('imgPrincipal')}" class="img-responsive wp-post-imagehttp://webschool.co.in/wpbizwrap/wp-content/uploads/2014/06/9" alt="" />
              </a>
          </div>
          {section loop=$imagenes name=i}
                <div class="col-md-4">
                    <a href="./images/{$imagenes[i]->get('nombre')}" data-lightbox="roadtip">
                    <img width="550" height="700" src="./images/{$imagenes[i]->get('nombre')}" class="img-responsive wp-post-imagehttp://webschool.co.in/wpbizwrap/wp-content/uploads/2014/06/9" alt="" />
                    </a>
                </div>
          {/section}
                
      </div>
    
  </div>

    
{/if}

</div>
    

<div class="space-70"></div>
