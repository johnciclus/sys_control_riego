<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoDocumento"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoSiembra"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>

<%--// Algunos cambios jsp/humedad-registro.jsp //--%>

<style type="text/css">
#tab-agretapa{
	background-color: #fff;
	width:600px;
	height:auto;
	padding:10px;
}
#form {
	border: 1px solid #1c160d;
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}
#tab-agretapa,#form fieldset,#form input,#form select {
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
}
</style>

<%
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
	if (usuario==null) response.sendRedirect("usuario-acceder.jsp");

	Iterator it;
	ArrayList rta = new ArrayList();
	Cultivo cultivo = new Cultivo();
	int codigocultivo = Integer.parseInt(request.getParameter("codcult"));
	cultivo.buscarcultivo(codigocultivo);
	String fechacultivo=cultivo.getFechacult().toString();
	fechacultivo=fechacultivo.substring(8,10)+"-"+fechacultivo.substring(5,7)+"-"+fechacultivo.substring(0,4);
%>
<div id="tab-agretapa" class="validationEngineContainer">
	<fieldset id="form">
		<legend>Registrar Etapa</legend>
		<ol align="center">
			<li>
				<label for="nnomcult">Nombre Cultivo</label> 
				<input type="text" name="nnomcult" id="nomcult" value="<%=cultivo.getNomcult()%>" readonly />
			</li>
			<li>
				<label for="ndenspoblacion">Densidad de Poblaci&oacute;n</label>
				<input type="text" name="ndenspoblacion" id="denspoblacion" value="<%=cultivo.getDenspoblacion()%>" readonly />
			</li>
			<li>
				<label for="nareacult">&Aacute;rea Cultivo (m<sup>2</sup>)</label>
				<input type="text" name="nareacult"  id="areacult" value="<%=cultivo.getAreacult()%>" readonly />
			</li>
			<li>
				<label for="nidtiposiembra">Tipo de Siembra</label> 
				<input type="text" name="nidtiposiembra"  id="idtiposiembra" value="<%=cultivo.SRtipodesiembra(cultivo.getIdtiposiembra())%>" readonly />
			</li>
			<li>
				<label for="nfechainicult">Fecha Inicio del Cultivo</label> 
				<input type="text" name="nfechainicult" id="fechainicult" value="<%=fechacultivo%>" readonly />
			</li>
			<li>
				<label for="nnometapa">Nombre Etapa</label> 
				<input type="text" name="nnometapa" id="nometapa" class="validate[required,custom[onlyLetterNumberSp]]" />
			</li>
			<li>
				<label for="nduretapa">Duraci&oacute;n Etapa (d&iacute;as)</label> 
				<input type="text" name="nduretapa" id="duretapa" class="validate[required,custom[integer],min[1]]" />
			</li>
			<li>
				<label for="nlimhumedad">L&iacute;mite de Humedad (centibares)</label> 
				<input type="text" name="nlimhumedad" id="limhumedad" class="validate[required,custom[integer],min[1]]" />
			</li>
			<li>
				<br />
			</li>
			<li>
				<input type="button" class="btn" name="bnagretapa" id="bagretapa" value="Registrar" onclick="agretapa('agretapa','<%=cultivo.getCodcult()%>')" />
				<input type="button" class="btn" name="bncancelar" id="bcancelar" value="Cancelar">
			</li>
		</ol>
	</fieldset>
	<div id="div-agretapa">
	</div>
</div>

<script type="text/javascript" language="javascript"> 
require(["validationengine-es"], function(){
		jQuery(document).ready(function(){
			jQuery("#tab-agretapa").validationEngine();
			$("#nometapa").focus();
		});
});
	
	function agretapa(vopcion,vcodcult) {
		if(jQuery("#tab-agretapa").validationEngine('validate')){
			vnometapa=document.getElementById("nometapa").value;
			vduretapa=document.getElementById("duretapa").value;
			vlimhumedad=document.getElementById("limhumedad").value;
			$.ajax({
				url : "jsp/etapa-administrar.jsp",
				data : "opcion="+vopcion+"&codcult="+vcodcult+"&nometapa="+vnometapa+"&duretapa="+vduretapa+"&limhumedad="+vlimhumedad,
				success : function(data) {
					$('div#div-agretapa').html(data);
					$('div#div-agretapa').bPopup({
			            modalClose: false
			          });
					cerrar(1500);
					}
			});
		}
	}
	$("#bcancelar").click(function() {
		  cerrar(500);
		});
	
	function cerrar(time){
		setTimeout(function(){
			$('#div-agretapa').remove();
			$('#div-modcult').remove();
			$('.b-modal').remove();
			$('.workspace-art').load("jsp/etapa-registro.jsp");
			},time);
	}
</script>
