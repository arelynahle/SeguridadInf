<%@page import="Model.Nino"%>
<%@page import="Model.Contacto"%>
<%@page import="Model.Detalle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

<title>Alta institución</title>

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

	<h2 class="page-section-title">Editar Niño</h2>

</section><!-- page-top -->
  <div class="zz-bottom"></div>

<section class="page-content wrap">

<div class="container">

<div class="row">

<div class="col-sm-6 col-md-6">

<div id="contact-form-holder">

<a href="mininos.jsp"><button>Regresar</button></a>
<br>
<br>    
    
    <form id="altanino" name="" method="get"  action="NinoServlet">

                    <h4>Llena los siguientes campos, por favor.</h4>

                    <fieldset>      
                        <input name="id_nino" value="${ninoTemp.id_nino}" type="hidden"size="20"/>
                        <input name="id_nino" value="${detTemp.id_det}" type="hidden"size="20" />
                        <input name="id_nino" value="${conTemp.id_con}" type="hidden"size="20" />

                        
                        <legend>Datos generales</legend>
                        <label for="nombre_nino"><strong>Nombre(s): &nbsp;<strong></label>                      
                        <input name="nombre_nino" value="${ninoTemp.nombre_nino}" type="text"size="20" required/><br><br>                        
                        
                        <label for="ap_nino"><strong>Apellido Paterno: &nbsp;<strong></label>
                        <input name="ap_nino" value="${ninoTemp.ap_nino}" type="text"size="20" required/><br><br>
                        
                        <label for="am_nino"><strong>Apellido Materno: &nbsp;<strong></label>
                        <input name="am_nino" value="${ninoTemp.am_nino}" type="text"size="20" required/><br><br>
        
                        <label for="edad_cron">Edad Cronológica: &nbsp;</label>
                        <input name= "edad_cron" value="${ninoTemp.edad_cron}" type="number" id="edad_cron" required><br><br>
                     
                        <label for="edadMental">Edad Mental: &nbsp;</label>
                        <input name= "edad_men_det" value="${detTemp.edad_men_det}" type="number" id="edadMental" required><br><br>
                        
                        <label for="id_inst">Institución ID: &nbsp;</label>
                        <input name= "id_inst" value="${ninoTemp.id_inst}" type="number" id="id_inst" required><br><br>

                        <label for="id_res">Responsable ID: &nbsp;</label>
                        <input name= "id_res" value="${ninoTemp.id_res}" type="number" id="id_res" required><br><br>
                        
                        <label for="id_det">Detalles ID: &nbsp;</label>
                        <input name= "id_det" value="${ninoTemp.id_det}" type="number" id="id_det" required><br><br>  
                        
                        <label for="id_con">Contacto ID: &nbsp;</label>
                        <input name= "id_con" value="${ninoTemp.id_con}" type="number" id="id_con" required><br><br>                        
                        
                        
                        
                        <label>Escolaridad:</label><br>
                        <input type="radio" name="escolaridad_det" value="preescolar" required> <label>Preescolar</label><br>
                        <input type="radio" name="escolaridad_det" value="primaria"> <label>Primaria</label><br>
                        <input type="radio" name="escolaridad_det" value="secundaria"> <label>Secundaria</label><br>


                         <br><br>

                        <label>Discapacidad: </label><br>
                        <input type="radio" name="discapacidad_det" value="sindromeDown" required> <label>Síndrome de Down</label><br>
                        <input type="radio" name="discapacidad_det" value="problemaNeuromotor">  <label>Problemas Neuromotores</label><br>
                        <input type="radio" name="discapacidad_det" value="deficienciaMental">  <label>Deficiencia Mental</label><br>
                        <input type="radio" name="discapacidad_det" value="silente">  <label>Silente</label><br>
                        <input type="radio" name="discapacidad_det" value="paralisisCerebral">  <label>Parálisis Cerebral</label><br>
                        <input type="radio" name="discapacidad_det" value="autismo">  <label>Autismo</label><br>
                        
                    </fieldset>   

                    <fieldset>       
                        <legend>Datos médicos: </legend>
                    <label>¿Está bajo tratamiento médico?</label><br>
                        <input type="radio" name="tratamiento_det" value="si" required> <label><strong>Sí</strong></label><br>
                       <input type="radio" name="tratamiento_det" value="no"> <label><strong>No</strong></label><br><br>

                       <label>¿Usa silla de ruedas?</label><br>
                       <input type="radio" name="silla_det" value="si" required> <label><strong>Sí</strong></label><br>
                       <input type="radio" name="silla_det" value="no"> <label><strong>No</strong></label><br><br>


                    </fieldset>

                    <fieldset>
                        <legend>En caso de emergencia, </legend>
                      <label>¿Cuál sería el hospital más adecuado para trasladarlo?</label>
                        <input name="hospital_con" value="${conTemp.hospital_con}" type="text"size="40" id="hospital_con" required/><br><br>
                       
                        <label>Llamar a: </label><br>
                        <input type="radio" name="parentesco_con" value="papa" required> <label><strong>Papá</strong></label><br>
                        <input type="radio" name="parentesco_con" value="mama"> <label><strong>Mamá</strong></label><br>
                 
                        <label for ="nombre_con"<strong>Nombre: &nbsp;<strong></label>
                        <input name="nombre_con" value="${conTemp.nombre_con}" type="text" id="nombre_con" size="40" required/><br><br>
                        <label for="telefono"><strong>Telefono:&nbsp;<strong></label>
                        <input name="tel_con" value="${conTemp.tel_con}" type="text" id="tel_con"size="40" required/><br><br>
                        <label for="celular"><strong>Celular:&nbsp;<strong></label>
                                    <input name="cel_con" value="${conTemp.cel_con}" type="text" id="cel_con"  size="40" required/><br><br>
                        <label for="oficina"><strong>Oficina:&nbsp;<strong></label>
                        <input name="of_con" value="${conTemp.of_con}" type="text" id="of_con" size="40" required/><br><br>
                  </fieldset>
                  <!--fieldset>
                    <label for="responsable"><strong>Responsable de la institución:&nbsp;<strong></label>
                    <input name="responsable" type="text"size="40"/><br><br>
                    <label for="responsablecelular"><strong>Celular: &nbsp;<strong></label>
                    <input name="responsablecelular" type="text"size="40"/><br><br>
                  </fieldset-->

                    <legend>Playera: </legend>
                    <label>Tipo</label><br>
                    <input type="radio" name="modeloplayera_nino" value="nino" required> <label><strong>Niño</strong>&nbsp;&nbsp</label>
                    <input type="radio" name="modeloplayera_nino" value="adulto"> <label><strong>Adulto</strong>&nbsp;&nbsp</label><br><br>
                    <label>Modelo</label><br>
                    <input type="radio" name="tallaplayera_nino" value="ch" required> <label><strong>CH</strong>&nbsp;&nbsp</label>
                    <input type="radio" name="tallaplayera_nino" value="m"> <label><strong>M</strong>&nbsp;&nbsp</label>
                    <input type="radio" name="tallaplayera_nino" value="g"> <label><strong>G</strong>&nbsp;&nbsp</label>
                    <input type="radio" name="tallaplayera_nino" value="eg"> <label><strong>EG</strong>&nbsp;&nbsp</label><br><br>
                   <p>
                        <input class="submit" type="submit" value="Submit"/>
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