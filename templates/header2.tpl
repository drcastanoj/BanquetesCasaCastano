<html lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{$title}</title>
        <!--google  font family-->
        <LINK REL="Shortcut Icon" HREF="./images/corona.ico">
        <link href="./css/css" rel="stylesheet" type="text/css">
        <link href="./css/css(1)" rel="stylesheet" type="text/css">*
        
        

        
        <link rel="stylesheet" id="contact-form-7-css" href="./css/styles.css" type="text/css" media="all">
<link rel="stylesheet" id="bootstrap-css" href="./css/bootstrap.min.css" type="text/css" media="all">
<link rel="stylesheet" id="ionicons-css" href="./css/ionicons.css" type="text/css" media="all">
<link rel="stylesheet" id="bizwrap-custom-style-css" href="./css/styles(1).css" type="text/css" media="all">
<link rel="stylesheet" id="bizwrap-style-css" href="./css/style.css" type="text/css" media="all">
<link rel="stylesheet" id="flexslider-css" href="./css/flexslider.css" type="text/css" media="all">
<link rel="stylesheet" id="animate-css" href="./css/animate.css" type="text/css" media="all">
<link rel="stylesheet" id="component-css" href="./css/component.css" type="text/css" media="all">
<script type="text/javascript" src="./js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="./js/jquery.easing.1.3.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/bootstrap-hover-dropdown.min.js"></script>
<script type="text/javascript" src="./js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="./js/jquery.mixitup.min.js"></script>
<script type="text/javascript" src="./js/envio.js"></script>
{*<link rel="stylesheet" href="./css/flexslider.css" type="text/css" media="screen" />*}



                                                                                                                                                                                                                                                                                                                                                                       </style>        
    </head>
    <body {*class="home page page-id-13 page-template page-template-templateshomepage-php"*}>
        <header class="header-main">
              {*<div class="top-bar">
                    <div class="container">

                        <div class="pull-left">
                            <div id="text-2" class="widget widget_text">			
                                <div class="textwidget">
                                    <ul class="info list-inline hidden-xs">                        
                                        <li>
                                            <a class="hover-color" href="{$gvar.l_global}">
                                                <i class="ion-ios7-email-outline"></i> BanquetesCasaCastano@gmail.com</a>
                                        </li>
                                        <li><i class="ion-iphone"></i> +57 (4) 481 34 70</li>
                                        <li><i class="ion-iphone"></i> +57 314 782 2097 - 301 591 7006 </li>
                                    </ul>
                                </div>
		</div>  
                        </div>

                        <div class="pull-right">
                            <div id="bw_social_widget-2" class="widget widget_bw_social_widget">
                                <div class="sidebar-box">
                                    <ul class=" list-inline social-btn">
                                        <li>
                                            <a href="http://facebook.com/BanquetesCasaCastano" target="_blank">
                                                <i title="facebook" class="ion-social-facebook"></i>
                                            </a>
                                        </li>
                                        
                                    </ul>

                    </div></div>                        </div>
                    </div><!--container end-->
                </div><!--topbar end-->*}
                        <div class="navbar navbar-default sticky-nav" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="{$gvar.l_lobal}">
                            <img width="200" height="300" src="./images/logo.png" class="img-responsive" alt="logo">
                        </a>
                    </div>
                    <div class="navbar-collapse collapse">
<ul id="menu-main-nav" class="nav navbar-nav navbar-right"><li id="menu-item-589" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-13 current_page_item {if $active=="index"}active {/if}"><a href="{$gvar.l_global}">Inicio</a></li>
<li id="menu-item-692" class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-childrenm {if $active=="eventos"}active {/if}">
        <a href="{$gvar.l_global}evento.php" class="dropdown-toggle" data-toggle="dropdown">Eventos<b class="caret"></b></a>
<ul class="dropdown-menu">
	{section loop=$eventos name=i}    
        <li id="menu-item-677" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="{$gvar.l_global}evento.php?option=mostrar&tipo={$eventos[i]->get('tipoFiesta')}">{$eventos[i]->get('tipoFiesta')}</a></li>
        {/section}       
</ul>
</li>
<li id="menu-item-602" class="menu-item menu-item-type-post_type menu-item-object-page {if $active=="servicios"}active {/if}"><a href="{$gvar.l_global}servicios.php" >Nuestros Servicios</a></li>
<li id="menu-item-583" class="menu-item menu-item-type-post_type menu-item-object-page {if $active=="blog"}active {/if}"><a href="{$gvar.l_global}blog.php" >Conoce Nuestro Trabajo</a></li>



<li id="menu-item-672" class="dropdown menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children {if $active=="contactanos"}active {/if}"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Contactanos<b class="caret"></b></a>
<ul class="dropdown-menu">
	<li id="menu-item-584" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="{$gvar.l_global}sobre_nosotros.php">Sobre Nosotros</a></li>
	<li id="menu-item-585" class="menu-item menu-item-type-post_type menu-item-object-page"><a href="{$gvar.l_global}contactanos.php">Contactanos</a></li>
</ul>
</li>
</ul>

</div><!--/.nav-collapse -->
</div><!--/.container-->
</div><!--navigation end-->
</header><!--header main end-->
