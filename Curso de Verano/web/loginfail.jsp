<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en-US">
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">

<title>Log-in</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]> <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> <![endif]-->

<link href='http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic,900%7CPacifico' rel='stylesheet' type='text/css'>

<!-- Favicons -->
<link rel="shortcut icon" href="images/favicon.ico">

<link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css" type="text/css" media="all" />
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css" type="text/css" media="all" />
<link rel="stylesheet" href="js/prettyphoto/css/prettyPhoto.css" type="text/css" media="all" />
 
</head>

<body>


<div id="main" class="wrap">

<header id="header-bar" class="wrap">
  
   <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="clearfix">
            <div id="logo"><a href="index.html"><img class="img-responsive" src="images/logo.png" alt=""/></a></div>
            
            <nav class="navbar navbar-custom" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapse-navigation"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            </div>
            <div class="collapse navbar-collapse" id="collapse-navigation">
            <ul class="nav menu-nav">
              
                <li><a href="index.html">Inicio</a></li>
                
                <li><a href="about.html">Nosotros</a>
                </li>
                
                <li><a href="teachers.html">Equipo</a>
                </li>
                
                <li><a href="patrocinadores.html">Patrocinadores</a>
                </li>
                
                <li><a href="gallery-4col.html">Galer�a</a>
               
                </li>
      		
                <li><a>Eventos</a>
                    <ul class="sub-menu">
                        <li><a href="curso.html">Curso de Verano</a></li>
                        <li><a href="posada.html">Posada</a></li>
                    </ul>
                </li>
                
                <li><a href="unete.html">�nete</a></li>
                
                 <li class="current_page_item"><a href="login.html">Log-in</a></li>
            </ul>
            </div><!-- /.navbar-collapse -->
            
          </nav>
           
          </div><!--.clearfix-->
  
      </div><!--.col-md-12-->
    </div><!--.row-->
    </div><!--.container-->
  </header><!-- header-bar-->
  

<section class="page-top wrap">

	<h2 class="page-section-title">Ingresa</h2>

</section><!-- page-top -->
  <div class="zz-bottom"></div>

<section class="page-content wrap">

<div class="container">

<div class="row">

<div class="col-sm-6 col-md-6">

<div id="contact-form-holder">

    <form id="login" name="" method="get"  action="LoginServlet">

                    <fieldset>       
                        <legend>Datos Instituci�n</legend>
                        <label for="usuario"><strong>Usuario: &nbsp;<strong></label>
                        <input name="nombre_usu" type="text"size="20" /><br><br>
                        
                        <label for="password"><strong>Clave: &nbsp;<strong></label>
                        <input name="contrasena_usu" type="password"size="20" /><br><br>
                     
                    </fieldset>   

                   <p>
                       <button><a href=""></a>Log-in</button>
                        <!--<input class="submit" type="submit" value="Log-in"/>-->
                       
                   </p>

                </form>
                
    <p text-color="red"><strong>Usuario o contrase�a no corresponden, introduce informaci�n v�lida.</strong></p>

	</div><!-- contact-form-holder-->
    
    <div id="output-contact"></div>


</div><!-- col-md-6-->

<div class="col-sm-6 col-md-6">

</div><!--col-md-6-->

</div><!-- row -->

</div><!-- container-->

</section><!-- page-content-->

<div class="zz-top-foo"></div>
<footer class="wrap">

<div class="copyright clearfix">

<div class="container">
<div class="row">
<div class="col-md-12">

<p>�2014 DAW- Arely, Rolando y Carlos</p>

<ul>
<li><a href="https://www.facebook.com/supercompucampo.itesm" target="_blank"><i class="fa fa-facebook"></i></a></li>
<li><a href="https://twitter.com/SuperCompucampo" target="_blank"><i class="fa fa-twitter"></i></a></li>
<!--<li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>-->
<!--<li><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>-->
<!--<li><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a></li>-->
<!--<li><a href="#" target="_blank"><i class="fa fa-youtube"></i></a></li>-->
<!--<li><a href="#" target="_blank"><i class="fa fa-vimeo-square"></i></a></li>-->
</ul>

</div><!-- col-md-12-->
</div><!-- row-->
</div><!-- container-->

</div><!-- copyright-->

</footer>

</div><!-- main -->

<div class="scrollup">
<a class="scrolltop" href="#">
<i class="fa fa-chevron-up"></i>
</a>
</div>


<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'></script>
<script type='text/javascript' src='css/bootstrap/js/bootstrap.min.js'></script>
<script type='text/javascript' src='js/jquery.easing.min.js'></script>
<script type='text/javascript' src='js/jquery.flexslider-min.js'></script>
<script type='text/javascript' src='js/prettyphoto/js/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='js/jquery.form.min.js'></script>
<script type='text/javascript' src='js/init.js'></script>

</body>
</html>