<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoDocumento"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoSiembra"%>


<%--// Algunos cambios jsp/humedad-registro.jsp //--%>

<style type="text/css">
#tab-agrcult{
    margin:0 auto;
	background-color: #fff;
	width:600px;
	height:330px;
	padding:10px;
}

#form {
	border: 1px solid #1c160d;
	margin: auto;
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}

#tab-agrcult,#form fieldset,#form input,#form select {
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	behavior: url('ie-style-min.htc');
}

#form legend {
	color: #1c160d;
	font-size: 20px;
}

#form ol {
	list-style: none;
}

#form ol li {
	padding-bottom: 5px;
}

#form ol li label {
	width: 300px;
	display: inline-block;
}

#form input,#form select {
	border: 1.5px solid #92d30f;
	text-align: center;
}

#form select {
	width: 150px;
}

#form input.btn {
	height: 30px;
	padding: 3px;
	background: #d9f691;
	font-weight: bold;
}

#form input.btn:hover {
	background: #62a80a;
	color: #fff;
}

#formcontent {
	width: 960px;
	margin: 0 auto;
}
</style>
<% 
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
	if (usuario==null) response.sendRedirect("usuario-acceder.jsp");

	ArrayList vectorTipoSiembra = new ArrayList();
	TipoSiembra tiposiem1 = new TipoSiembra();
	Iterator it;
	vectorTipoSiembra= tiposiem1.idtiposiembras();//esta accediendo al metodo idtipodocs y ste vector aroja oyto vector que se llama documentos
%>
<div id="tab-agrcult" class="validationEngineContainer">
		<fieldset id="form">
			<legend>Agregar Cultivo</legend>
			<ol align="center">
				<li>
					<label for="nnomcult">Nombre Cultivo</label> 
					<input type="text" name="nnomcult" id="nomcult" class="validate[required,custom[onlyLetterNumberSp]]" />
				</li>
				<li>
					<label for="ndenspoblacion">Densidad de Poblaci&oacute;n</label>
					<input type="text" name="ndenspoblacion" id="denspoblacion" class="validate[required,custom[integer],min[1]]" />
				</li>
				<li>
					<label for="nareacult">&Aacute;rea Cultivo (m<sup>2</sup>)</label>
					<input type="text" name="nareacult" id="areacult" class="validate[required,custom[integer],min[1]]" />
				</li>
				<li>
					<label for="nidtiposiembra">Tipo de Siembra</label> 
					<select name="nidtiposiembra" id="idtiposiembra" class="validate[required]">
					<option value>Seleccione Tipo</option>
						<%
							it = vectorTipoSiembra.iterator();
							while (it.hasNext()) {
								TipoSiembra tiposiem = new TipoSiembra();
								tiposiem = (TipoSiembra) it.next();
						%>
						<option value="<%=tiposiem.getIdtiposiembra()%>"><%=tiposiem.getNomsiembra()%></option>
						<%}%>
					</select>
				</li>
				<li>
					<label for="nfechainicult">Fecha Inicio del Cultivo</label>
				 	<input type="text" name="nfechainicult" id="fechainicult" class="validate[required,custom[date]]" />
					<img src="js/calendar/calendar-logo.png" width="16" height="16" border="0" title="Calendario" id="calendarini" />
				</li>
				<li>
				<br />
				</li>
				<li>
					<input type="button" class="btn" name="bnagrcult" id="bagrcult" value="Agregar" />
					<input type="button" class="btn" name="bncancelar" id="bcancelar" value="Cancelar" />
				</li>
			</ol>
		</fieldset>
	<div id="div-agrcult">
	</div>
</div>

<script type="text/javascript" language="javascript"> 
	require(["validationengine-es","bpopup"], function(){
		$(document).ready(function(){
			$("#nomcult").focus();
			jQuery("#tab-agrcult").validationEngine();
			document.getElementById("fechainicult").value=fechaactual();		
			});	
	});	
	$("#bagrcult").click(function(){
		if(jQuery("#tab-agrcult").validationEngine('validate')){
			vnomcult=document.getElementById("nomcult").value;
			vdenspoblacion=document.getElementById("denspoblacion").value;
			vareacult=document.getElementById("areacult").value;
			vidtiposiembra=document.getElementById("idtiposiembra").value;
			vfechainicult=document.getElementById("fechainicult").value;
			vfechainicult=vfechainicult.substr(6,9)+"-"+vfechainicult.substr(3,3)+vfechainicult.substr(0,2);
			$.ajax({
				url : "jsp/cultivo-administrar.jsp",
				data : "opcion=agrcult&nomcult="+vnomcult+"&denspoblacion="+vdenspoblacion+"&areacult=" + vareacult+"&idtiposiembra=" + vidtiposiembra+"&fechainicult=" + vfechainicult,
				success : function(data) {
					$('div#div-agrcult').html(data);
					$('div#div-agrcult').bPopup({
			            modalClose: false		            
			          });
					cerrar(1500);
					}
			});
		}
	});
	require(["calendar-setup"], function(){
		Calendar.setup({ 
		    inputField : "fechainicult",
		     ifFormat  : "%d-%m-%Y",
		     button    : "calendarini" 
		});
	});
	
	function fechaactual(){
		var vdate=new Date();
		var vfecha=('0'+vdate.getDate()).slice(-2)+'-'+('0'+(vdate.getMonth()+1)).slice(-2)+'-'+vdate.getFullYear();
		return vfecha;
	}
	$("#bcancelar").click(function() {
		  cerrar(500);
		});	
	function cerrar(time){
		setTimeout(function(){
			$('#div-agrcult').remove();
			$('.b-modal').remove();
			$('.workspace-art').load("jsp/cultivo-registro.jsp");
			},time);
	}
</script>