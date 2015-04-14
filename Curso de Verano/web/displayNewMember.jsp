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

<title>�Alta exitosa!</title>

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
            <div id="logo"><a href="index.html"><img class="img-responsive" src="images/logo.png"/></a></div>
            
            <nav class="navbar navbar-custom" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapse-navigation"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            </div>
            <div class="collapse navbar-collapse" id="collapse-navigation">
           <ul class="nav menu-nav">
              
                <li><a href="miinstitucion.jsp">Mi Institucion</a></li>
                
                <li class="current_page_item"><a href="contact.html">Alta de Ni�os</a></li>
        
                
                 <li><a href="index.html">Salir</a></li>
            </ul>
            </div><!-- /.navbar-collapse -->
            
          </nav>
           
          </div><!--.clearfix-->
  
      </div><!--.col-md-12-->
    </div><!--.row-->
    </div><!--.container-->
  </header><!-- header-bar-->
  

<section class="page-top wrap">

	<h2 class="page-section-title">Alta Exitosa de Ni�o</h2>

</section><!-- page-top -->
  <div class="zz-bottom"></div>

<section class="page-content wrap">

<div class="container">

<div class="row">

<div class="col-sm-6 col-md-6">

<h3 class="widgettitle">Nuevo ni�o registrado en la instituci�n</h3>

<h5>Aqu� te presentamos los datos que introdujiste:</h5>

        <br>
        <h5>Ni�o</h5>        
        <table cellspacing="5" cellpadding="5" border="1">
            <tr>
                <th>Nombre</th>
                <td>${ninoTemp.nombre_nino}</td>
            </tr>
            <tr>
                <th>Apellido Paterno</th>
                <td>${ninoTemp.ap_nino}</td>
            </tr>
            <tr>
                <th>Apellido Materno</th>
                <td>${ninoTemp.am_nino}</td>
            </tr>
            <tr>
                <th>Edad</th>
                <td>${ninoTemp.edad_cron}</td>
            </tr>
        </table>    
        
         <br>
        <h5>IDs</h5>        
        <table cellspacing="5" cellpadding="5" border="1">
            <tr>
                <th>ID Instituci�n</th>
                <td>${ninoTemp.id_inst}</td>
            </tr>
            <tr>
                <th>ID Responsable</th>
                <td>${ninoTemp.id_res}</td>
            </tr>
            <tr>
                <th>ID Contacto</th>
                <td>${ninoTemp.id_con}</td>
            </tr>
            <tr>
                <th>ID Detalle</th>
                <td>${ninoTemp.id_det}</td>
            </tr>
        </table> 
            
        <br>    
        <h5>Playera</h5>
        <table cellspacing="5" cellpadding="5" border="1">   
            <tr>
                <th>Modelo Playera</th>
                <td>${ninoTemp.modeloplayera_nino}</td>
            </tr>
            <tr>
                <th>Talla Playera</th>
                <td>${ninoTemp.tallaplayera_nino}</td>
            </tr> 
        </table>
            
        <br>    
        <h5>Detalle</h5>
        <table cellspacing="5" cellpadding="5" border="1">   
            <tr>
                <th>Discapacidad</th>
                <td>${detTemp.discapacidad_det}</td>
            </tr>
            <tr>
                <th>Edad Mental</th>
                <td>${detTemp.edad_men_det}</td>
            </tr>
            <tr>
                <th>Escolaridad</th>
                <td>${detTemp.escolaridad_det}</td>
            </tr>
            <tr>
                <th>Tratamiento</th>
                <td>${detTemp.tratamiento_det}</td>
            </tr>    
            <tr>
                <th>Silla</th>
                <td>${detTemp.silla_det}</td>
            </tr> 
            <tr>
                <th>Hospital</th>
                <td>${conTemp.hospital_con}</td>
            </tr>
        </table>
            
        <br>    
        <h5>En Caso de Emergencia:</h5>
        <table cellspacing="5" cellpadding="5" border="1">   
            <tr>
                <th>Llamar a: </th>
                <td>${conTemp.parentesco_con}</td>
            </tr>              
            <tr>
                <th>Nombre Contacto: </th>
                <td>${conTemp.nombre_con}</td>
            </tr>    
            <tr>
                <th>Telefono Contacto: </th>
                <td>${conTemp.tel_con}</td>
            </tr>                
            <tr>
                <th>Celular Contacto: </th>
                <td>${conTemp.cel_con}</td>
            </tr>  
             <tr>
                <th>Oficina Contacto: </th>
                <td>${conTemp.of_con}</td>
            </tr>             
        </table>
       
        <br>
        <a href="contact.html"><button>Registrar Otro Ni�o</button></a>
        
        <br>    
        <a href="miinstitucion.jsp"><button>Mi Instituci�n</button></a>

</div><!-- col-md-6-->

</div><!--row-->

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
