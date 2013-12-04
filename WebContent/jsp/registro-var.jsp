<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>

<style type="text/css">
#form-consulta {
	border: 1px solid #1c160d;
	margin: auto;
	font-size: 20px; 
	font-variant : small-caps;
	font-weight: bold;
}

#form-consulta fieldset,#form-consulta input,#form-consulta select{
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	behavior: url('ie-style-min.htc');
}

#form-consulta legend {
	color: #1c160d;
	font-size: 20px;
}

#form-consulta ol {
	list-style: none;
}

#form-consulta ol li {
	padding-bottom: 5px;
}

#form-consulta ol li label {
	width: 150px;
	display: inline-block;
}
#form-consulta ol li span {
	display: inline-block;
}
#form-consulta input,#form-consulta select {
	border: 1.5px solid #92d30f;
	text-align: center;
}

#form-consulta input.btn {
	height: 30px;
	padding: 3px;
	background: #d9f691;
	font-weight: bold;
}

#form-consulta input.btn:hover {
	background: #62a80a;
	color: #fff;
}

#formcontent {
	width: 960px;
	margin: 0 auto;
}
#form-consulta #loader{
	width: 40px;
	margin: 0 500px;
}
</style>

<%
	Cultivo cultivos = new Cultivo();
	ArrayList vectorCultivo = cultivos.codcults();
	Iterator it;
	
	String modo = request.getParameter("modo");
	String titulo = "", url_consulta="", url_monitoreo="";
	
	if(modo.equals("humedad")){
		titulo = "Registro de humedad";
		url_consulta = "jsp/humedad-consulta.jsp";
		url_monitoreo = "jsp/humedad-monitoreo.jsp";
	}
	else if(modo.equals("riego")){
		titulo = "Registro de riegos";
		url_consulta = "jsp/riego-consulta.jsp";
		url_monitoreo = "jsp/riego-monitoreo.jsp";
	}
%>

<div id="tab-monitor" class="validationEngineContainer">
	<fieldset id="form-consulta">
		<legend> <%=titulo %> </legend>
		<ol>
			<li align="center">
				<label for="ncultivos">Cultivos </label> 
				<label for="nfechaini">Fecha Inicial </label>
				<label for="nfechafin">Fecha Final </label>
				<label for="nhoraini">Hora Inicial </label>
				<label for="nhorafin">Hora Final </label>
			</li>
			<li align="center">
				<select name="ncultivos" id="cultivos" class="validate[required]">
					<option value>Seleccione Cultivo</option>					
					<%
						it = vectorCultivo.iterator();
						Cultivo cultivo = new Cultivo();
						while(it.hasNext()){	
							cultivo = (Cultivo)it.next();
					%>
					<option value="<%=cultivo.getCodcult() %>"><%= cultivo.getNomcult()%></option>
					<% } %>					
				</select> 
				<input type="text" name="nfechaini" id="fechaini" class="validate[required,custom[date]]" />
				<img src="js/calendar/calendar-logo.png" width="16" height="16" border="0" title="Calendario" id="calendarini" />
				<input type="text" name="nfechafin" id="fechafin" class="validate[required,custom[date]]" /> 
				<img src="js/calendar/calendar-logo.png" width="16" height="16" border="0" title="Calendario" id="calendarfin" />
				<input type="text" name="nhoraini" id="horaini" class="validate[required,custom[time]]" /> 
				<input type="text" name="nhorafin" id="horafin" class="validate[required,custom[time]]" /> 
			</li>
			<li align="center">
				<span>	
					<input type="button" name="cancel" class="btn" value="Cancelar" onclick="limpiar()" />  
				</span>
				<span>
					<form name="form_tabla" method="post" action="<%=url_consulta %>"> 
						<input type="submit" name="submit" class="btn" value="Generar Tabla" />
					</form>
				</span>
				<span>
					<form name="form_grafica" method="post" action="<%=url_monitoreo%>">
						<input type="submit" name="submit" class="btn" value="Generar Grafica" />
					</form>
				</span>
			</li>
		</ol>
		<br />
		<div name="divconsulta" id="divconsulta" class="divconsulta"></div> 		
	</fieldset>
</div>

<script type="text/javascript" language="javascript"> 
	require(["validationengine-es"], function(){
		jQuery(document).ready(function(){
			jQuery("#tab-monitor").validationEngine();
			
			document.getElementById("cultivos").value="";
			document.getElementById("fechaini").value=fechaactual();
			document.getElementById("fechafin").value=fechaactual();
			document.getElementById("horaini").value="00:00:00";
			document.getElementById("horafin").value="23:59:59";
			
			require(["calendar-setup"], function(){
				Calendar.setup({ 
				    inputField : "fechaini",
				     ifFormat  : "%d-%m-%Y",
				     button    : "calendarini" 
				});
				Calendar.setup({ 
				    inputField : "fechafin",
				     ifFormat  : "%d-%m-%Y",
				     button    : "calendarfin" 
				});
			});
			
			function obtDatosHumedad(){
				var idcultivo=document.getElementById("cultivos").value;	
				var vnfechaini=document.getElementById("fechaini").value;
				var vnfechafin=document.getElementById("fechafin").value;	
				var vnhoraini=document.getElementById("horaini").value;
				var vnhorafin=document.getElementById("horafin").value;
				
				vnfechaini=vnfechaini.substr(6,9)+"-"+vnfechaini.substr(3,3)+vnfechaini.substr(0,2);
				vnfechafin=vnfechafin.substr(6,9)+"-"+vnfechafin.substr(3,3)+vnfechafin.substr(0,2);
				
				return {'id': idcultivo, 'fechaini': vnfechaini, 'fechafin': vnfechafin, 'horaini': vnhoraini, 'horafin': vnhorafin};
			};
			
			$(form_tabla).submit(function(){	
				if(jQuery("#tab-monitor").validationEngine('validate')){
					var datHum = obtDatosHumedad();
					
					var $vdivconsulta= $('div#divconsulta').html('<img id="loader" src="css/loader.gif" />');
					
					$.ajax({
						url: "<%=url_consulta %>",
						data: "ncultivos="+datHum.id+"&nfechaini="+datHum.fechaini+"&nfechafin="+datHum.fechafin+"&nhoraini="+datHum.horaini+"&nhorafin="+datHum.horafin,
						  success: function(data) {  
							    setTimeout(function(){
							       $vdivconsulta.html(data);
							       }, 2000);         
						  }
					});																		
					return false;
				}
			});
			
			$(form_grafica).submit(function(){
				if(jQuery("#tab-monitor").validationEngine('validate')){
					var datHum = obtDatosHumedad();		
					var $vdivconsulta= $('div#divconsulta').html('<img id="loader" src="css/loader.gif" />');
							
					$.ajax({
						url: "<%=url_monitoreo %>",
						data: "ncultivos="+datHum.id+"&nfechaini="+datHum.fechaini+"&nfechafin="+datHum.fechafin+"&nhoraini="+datHum.horaini+"&nhorafin="+datHum.horafin,
						  success: function(data) {  
							    setTimeout(function(){
							       $vdivconsulta.html(data);
							       }, 2000);         
						  }
					});																		
					return false;
				}
			});			
		});
	});
	function limpiar(){
		document.getElementById('cultivos').value="";
		document.getElementById("fechaini").value=fechaactual();
		document.getElementById("fechafin").value=fechaactual();
		document.getElementById("horaini").value="00:00:00";
		document.getElementById("horafin").value="23:59:59";
	};
	function fechaactual(){
		var vdate=new Date();
		var vfecha=('0'+vdate.getDate()).slice(-2)+'-'+('0'+(vdate.getMonth()+1)).slice(-2)+'-'+vdate.getFullYear();
		return vfecha;
	};
</script>