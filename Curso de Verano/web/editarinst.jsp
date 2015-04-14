

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

<title>Editar institución</title>

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
            <div id="logo"><img class="img-responsive" src="images/logo.png" alt=""/></div>
            
            <nav class="navbar navbar-custom" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapse-navigation"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            </div>
            <div class="collapse navbar-collapse" id="collapse-navigation">
            <ul class="nav menu-nav">
              
                <li class="current_page_item"><a href="miinstitucion.jsp">Mi Institucion</a></li>
                
                <li><a href="contact.html">Alta de Niños</a></li>
        
                
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

	<h2 class="page-section-title">Mi Institución</h2>

</section><!-- page-top -->
  <div class="zz-bottom"></div>

<section class="page-content wrap">

<div class="container">

<div class="row">

<div class="col-sm-6 col-md-6">

<div id="contact-form-holder">

 <form id="editarinst" name="" method="get"  action="InstServlet">
     <h4>Realiza los cambios necesarios</h4>


                    <h4>Llena los siguientes campos, por favor.</h4>

                    <fieldset>      
                        <input name="id_inst" value="${instTemp.id_inst}" type="hidden"size="20" />
                        
                        <legend>Datos generales</legend>
                        <label for="nombre_inst"><strong>Nombre(s): &nbsp;<strong></label>                      
                        <input name="nombre_inst" value="${instTemp.nombre_inst}" type="text"size="20" required/><br><br> 
                        
                        
                        <label for="calle_inst"><strong>Calle: &nbsp;<strong></label>
                        <input name="calle_inst" value="${instTemp.calle_inst}" type="text"size="20" required/><br><br>
                        
                        <label for="numero_inst"><strong>Número: &nbsp;<strong></label>
                        <input name="numero_inst" value="${instTemp.numero_inst}"  type="number"size="20" required/><br><br>
                  
                        <label for="colonia_inst"><strong>Colonia: &nbsp;<strong></label>
                        <input name="colonia_inst" value="${instTemp.colonia_inst}" type="text"size="20" required/><br><br>
                        
                        <label for="cp_inst"><strong>Código Postal: &nbsp;<strong></label>
                        <input name="cp_inst" value="${instTemp.cp_inst}" type="number"size="20" required/><br><br>
                        <%--<%=institucion.getcp_inst()%>--%>
                            
                        <label for="ciudad_inst"><strong>Ciudad: &nbsp;<strong></label>
                        <input name="ciudad_inst" value="${instTemp.ciudad_inst}" type="text"size="20" required/><br><br>
                        <%--<%=institucion.getciudad_inst()%>--%>
                            
                        <label for="estado_inst"><strong>Estado: &nbsp;<strong></label>
                        <input name="estado_inst" value="${instTemp.estado_inst}" type="text"size="20" required/><br><br>
                        <%--<%=institucion.getestado_inst()%>--%>
                        
                        <label for="tel_inst"><strong>Teléfono: &nbsp;<strong></label>
                        <input name="tel_inst" value="${instTemp.tel_inst}" type="number"size="20" required/><br><br> 
                        <%--<%=institucion.gettel_inst()%>--%>
                            
                        <label for="max_ninos_inst"><strong>Máximo de Niños: &nbsp;<strong></label>
                        <input name="max_ninos_inst" value="${instTemp.max_ninos_inst}" type="number"size="20" required/><br><br> 
                        <%--><%=institucion.getmax_ninos_inst()%>--%>

                    <fieldset>
                        <legend>Datos Director</legend>
                        <label for="nombre_dir"><strong>Nombre(s): &nbsp;<strong></label>
                        <input name="nombre_dir" value="${instTemp.nombre_dir}" type="text"size="20" required/><br><br>
                        <%--<%=institucion.getnombre_dir()%>--%>
                        
                        <label for="ap_dir"><strong>Apellido Paterno: &nbsp;<strong></label>
                        <input name="ap_dir" value="${instTemp.ap_dir}" type="text"size="20" required/><br><br>  
                        <%--<%=institucion.getap_dir()%>--%>
                        
                        <label for="am_dir"><strong>Apellido Materno: &nbsp;<strong></label>
                        <input name="am_dir" value="${instTemp.am_dir}" type="text"size="20" required/><br><br>  
                        <%--<%=institucion.getam_dir()%>--%>
                        
                         <label for="cel_dir"><strong>Celular: &nbsp;<strong></label>
                        <input name="cel_dir" value="${instTemp.cel_dir}" type="text"size="20" required/><br><br> 
                        <%--<%=institucion.getcel_dir()%>--%>
                                                                  
                         <label for="email_dir"><strong>Email: &nbsp;<strong></label>
                        <input name="email_dir" value="${instTemp.email_dir}" type="text"size="20" required/><br><br> 
                        <%--<%=institucion.getemail_dir()%>--%>
                    </fieldset>
                        
                   <p>
                        <input class="submit" type="submit" value="Registrar Cambios"/>
                        <input class="reset" type="reset" value="Limpiar"/>
                   </p>                   

                <tr>
                    <td><input type="hidden" value="4" name="opcion" /></td>
                </tr>
                   
                </form>
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

<p>©2014 DAW- Arely, Rolando y Carlos</p>

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