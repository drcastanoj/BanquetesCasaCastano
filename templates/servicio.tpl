<div class="space-70"></div>

<section class="padding-40 page-tree-bg" >  
    <h3 class="page-tree-text  " >      Nuestros Servicios    </h3>  
</section><!--page-tree end here-->

<div class="space-70"></div>

<div class="container">  
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
</div>

<div class="space-70"></div>