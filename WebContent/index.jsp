<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="title" content="" />
		<meta name="keywords" lang="es" content="" />
		<meta name="description" content=""/>
		<meta name="author" content="" />
		<meta name="copyright" content="Copyright &copy; 2013 | Todos los derechos reservados" />
		<meta name="resource-type" content="document" />    
	    <meta name="language" content="spanish" />
	    <meta name="robots" content="all" />
	    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
		<meta http-equiv="language" content="es-CO" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="pragma" content="no-cache" />			

		<link rel="icon" href="custom/favicon.ico" type="image/vnd.microsoft.icon" />
		<link rel="shortcut icon" href="custom/favicon.ico" type="image/vnd.microsoft.icon" />
		<link rel="icon" href="custom/favicon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="custom/favicon.ico" type="image/x-icon" />
		
		<link rel="stylesheet" href="css/jquery-ui-1.8.4-custom.css" type="text/css" media="screen" />		
		<link rel="stylesheet" href="css/jui-datatables.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/page-style-min.css" type="text/css" media="screen" />	
		<link rel="stylesheet" href="css/jui-validationengine.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="js/calendar/calendar.css" type="text/css" media="screen" />

		<script type="text/javascript" language="javascript" src="js/cfinstall-min.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery-1.9.1-min.js"></script>
		<script type="text/javascript" language="javascript" src="js/jquery-require.js"></script>
		<script type="text/javascript" language="javascript" src="js/utilities-min.js"></script> 
				
	    <script type="text/javascript" language="javascript">	    	
	    $(document).ready(function() {
				cfinstall.check({mode:"overlay",destination:"http://localhost/SysControlRiego/"}); 
	    });		
	    	requirejs.config({
	    	    baseUrl:'js/',
	    	    paths: {
	    	    	"require":				"jquery-require",
	    	    	"jquery":				"jquery-1.9.1-min",
	                "highcharts":			"jquery-highcharts",
	                "highstock":			"jquery-highstock",
	                "datatables":			"jquery-datatables-min",
	                "bpopup":				"jquery-bpopup-min",
	                "validationengine": 	"jquery-validationengine",
	                "validationengine-es": 	"jquery-validationengine-es",
	                "tms": 					"jquery-tms-0.3",
	                "tms-presets": 			"jquery-tms-presets",	                
	                "calendar":				"calendar/calendar",        
	                "calendar-es":			"calendar/calendar-es",
	                "calendar-setup": 		"calendar/calendar-setup"	   
	                	
	            },

	            shim: {
	                "highcharts": {
	                    "exports": "Highcharts",
	                    "deps":["jquery"]
	                },
	                "highstock": {
	                	"deps":["jquery"]
	                },
	                "datatables": {
	                	"deps":["jquery"]
	                },
	                "bpopup": {
	                	"deps":["jquery"]
	                },
	                "validationengine": {
	                	"deps":["jquery"]
	                },
	                "validationengine-es": {
	                	"deps":["validationengine"]
	                },
	                "tms": {
	                	"deps":["jquery"]
	                },
	                "tms-presets": {
	                	"deps":["tms"]
	                },
	                "calendar-setup": {
	                	"deps":["calendar","calendar-es"]
	                }
	            }
	    	});
	    </script>
	    		
		<title>SystemTeleco</title>	
	</head>
	<body id="page-art">    
		<div class="header-art">
	   		<div class="logo">
	   			<a href="index.jsp" title="SystemTeleco">
	   				<img src="custom/logo.jpg" alt="logo"/>
	   			</a>
	   		</div>
	   		<div class="menu">
	   			<ul id="mainmenu" class="menumain">
					<li>
						<span>&nbsp;</span>						
						<span class="menu-item-middle">Cultivo</span>	
						<div class="submenu">
							<ul>
								<li>
									<a href="jsp/cultivo-registro.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Consultar</span>
									<span>&nbsp;</span>		
									</a>
								</li>
								<li><a href="jsp/cultivo-agregar.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Registrar</span>
									<span>&nbsp;</span>		
									</a>
								</li>
								<li>
									<a href="jsp/etapa-registro.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Etapas</span>
									<span>&nbsp;</span>		
									</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<span>&nbsp;</span>	
						<span class="menu-item-middle">Sensores</span>
						<div class="submenu">
							<ul>
								<li>
									<a href="jsp/zigbee-registro.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Consultar</span>
									<span>&nbsp;</span>		
									</a>
								</li>
								<li><a href="jsp/zigbee-agregar.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Registrar</span>
									<span>&nbsp;</span>		
									</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<span>&nbsp;</span>	
						<span class="menu-item-middle">Humedad</span>
						<div class="submenu">
							<ul>
								<li>
									<a href="jsp/registro-var.jsp?modo=humedad">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Monitorear</span>
									<span>&nbsp;</span>		
									</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<span>&nbsp;</span>	
						<span class="menu-item-middle">Riego</span>
						<div class="submenu">
							<ul>
								<li>
									<a href="jsp/registro-var.jsp?modo=riego">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Monitorear</span>
									<span>&nbsp;</span>		
									</a>
								</li>
							</ul>
						</div>
					</li>
					<li>
						<span>&nbsp;</span>	
						<span class="menu-item-middle">Usuario</span>
						<div class="submenu">
							<ul>
								<%
									if (usuario==null)
									{	
								%>
								<li>
									<a href="jsp/usuario-acceder.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Acceder</span>
									<span>&nbsp;</span>		
									</a>
								</li>
								<%
									}else{
								%>
								<li>
									<a href="jsp/usuario-registro.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Consultar</span>
									<span>&nbsp;</span>		
									</a>
								</li>
								<li>
									<a href="jsp/usuario-agregar.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Registrar</span>
									<span>&nbsp;</span>		
									</a>
								</li>							
								<li>
									<a href="jsp/usuario-salir.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Salir</span>
									<span>&nbsp;</span>		
									</a>
								</li>
								<%
									}
								%>
							</ul>
						</div>
					</li>
					<li>
						<span>&nbsp;</span>	
						<span class="disable">Fertilizante</span>
						<%-- 	
						<div class="submenu">
							<ul>
								<li>
									<a href="jsp/inicio.jsp">
									<span>&nbsp;</span>	
									<span class="submenu-item-middle">Registrar</span>
									<span>&nbsp;</span>		
									</a>
								</li>
							</ul>
						</div>
						--%>
					</li>
				</ul>
	   		</div>
	   	</div>
		<div class="content-art">			
			<div class="workspace-art">
					<script type="text/javascript" language="javascript"> 
					require(["tms-presets"], function(){
						$(document).ready(function(){
							$(".workspace-art").load("jsp/inicio.jsp");
						});		
					});	
					</script>
			</div>			
		</div>
	   	<div class="footer-art">
			<p class="p-art">
			| <a id="termsandconditions" href="support/termsandconditions.html">T&eacute;minos y Condiciones</a> | <a id="policyprivacy" href="support/policyprivacy.html">Pol&iacute;ticas de Privacidad</a> |<a id="poweredby" href="support/poweredby.html"> Desarrollado por Empresa</a> | 		 
			<br /> 
	        Copyright &copy;  2013 |  Todos los derechos reservados.      
			</p>
	    </div>	
	</body>
</html>