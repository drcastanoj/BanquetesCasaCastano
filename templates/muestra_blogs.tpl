<div class="space-70">
    
</div><div class="container">
    <div class="row"><div class="col-md-12">
            <h3 class="heading-sec">Conoce Nuestro Trabajo</h3>
        </div>
    </div>
    <div class="row">
        
        
            {section loop=$blog3 name=i}
                <div class="col-md-4 col-sm-6 margin-btm-20">
            <div class="news-sec">
                <div class="news-thumnail">
                    <a href="{$gvar.l_global}blog.php?option=mostrar&nombre={$blog3[i]->get('nombre')}">
        <img width="300" height="144" src="./images/{$blog3[i]->get('imgPrincipal')}" class="img-responsive wp-post-image" alt="">
                    </a>
                </div>
                <div class="news-desc">
                    <h3 class="blog-post-title"><a href="{$gvar.l_global}blog.php?option=mostrar&nombre={$blog3[i]->get('nombre')}" class="hover-color">{$blog3[i]->get('nombre')}</a></h3>
                    <span class="news-post-cat">{$blog3[i]->get('fecha')}</span>
                       <p> {$blog3[i]->get('descripcion')}</p>
                </div>
            </div>
                   </div> 
            {/section}
        </div>
</div>
        <div class="space-70"></div>
