<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoDocumento"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoSiembra"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>

<%--// Algunos cambios jsp/humedad-registro.jsp //--%>

<style type="text/css">

#tab-editcult{
	background-color: #fff;
	width:600px;
	height:330px;
	padding:10px;
}
#form {
	border: 1px solid #1c160d;
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}

#tab-editcult,#form fieldset,#form input,#form select {
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
.calendar{
	z-index:9999;
}
</style>

<%
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
	if (usuario==null) response.sendRedirect("usuario-acceder.jsp");

	ArrayList vectorTipoSiembra = new ArrayList();
	TipoSiembra tiposiem1 = new TipoSiembra();
	Iterator it;
	vectorTipoSiembra = tiposiem1.idtiposiembras();//esta accediendo al metodo idtipodocs y ste vector aroja oyto vector que se llama documentos
	ArrayList rta = new ArrayList();
	Cultivo cultivo = new Cultivo();
	int codigocultivo = Integer.parseInt(request.getParameter("codcult"));
	cultivo.buscarcultivo(codigocultivo);
	String fechacultivo=cultivo.getFechacult().toString();
	fechacultivo=fechacultivo.substring(8,10)+"-"+fechacultivo.substring(5,7)+"-"+fechacultivo.substring(0,4);
%>
<div id="tab-editcult" class="validationEngineContainer">
	<fieldset id="form">
		<legend>Cultivo a Modificar</legend>
		<ol align="center">
			<li>
				<label for="nnomcult">Nombre Cultivo</label> 
				<input type="text" name="nnomcult" id="nomcult" value="<%=cultivo.getNomcult()%>" class="validate[required,custom[onlyLetterNumberSp]]" />
			</li>
			<li>
				<label for="ndenspoblacion">Densidad de Poblaci&oacute;n</label>
				<input type="text" name="ndenspoblacion" id="denspoblacion" value="<%=cultivo.getDenspoblacion()%>" class="validate[required,custom[integer],min[1]]" />
			</li>
			<li>
				<label for="nareacult">&Aacute;rea Cultivo (m<sup>2</sup>)</label>
				<input type="text" name="nareacult"  id="areacult" value="<%=cultivo.getAreacult()%>" class="validate[required,custom[integer],min[1]]" />
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
							if(cultivo.getIdtiposiembra()==tiposiem.getIdtiposiembra()){
					%>
					<option value="<%=tiposiem.getIdtiposiembra()%>" selected><%=tiposiem.getNomsiembra()%></option>
					<%}else{%>
					<option value="<%=tiposiem.getIdtiposiembra()%>"><%=tiposiem.getNomsiembra()%></option>
					<%}}%>
				</select>
			</li>
			<li>
				<label for="nfechainicult">Fecha Inicio del Cultivo</label> 
				<input type="text" name="nfechainicult" id="fechainicult" value="<%=fechacultivo%>" class="validate[required,custom[date]]" />
				<img src="js/calendar/calendar-logo.png" width="16" height="16" border="0" title="Calendario" id="calendarcult" />
			</li>
			<li>
				<br />
			</li>
			<li>
				<input type="button" class="btn" name="bnactcult" id="bactcult" value="Actualizar" onclick="modcult('actcult','<%=cultivo.getCodcult()%>')" />
				<input type="button" class="btn" name="bnelicult" id="belicult" value="Eliminar" onclick="modcult('elicult','<%=cultivo.getCodcult()%>')" />
				<input type="button" class="btn" name="bncancelar" id="bcancelar" value="Cancelar">
			</li>
		</ol>
	</fieldset>
	<div id="div-actcult">
	</div>
</div>

<script type="text/javascript" language="javascript"> 

require(["validationengine-es","calendar-setup"], function(){
		jQuery(document).ready(function(){
			jQuery("#tab-editcult").validationEngine();
			$("#nomcult").focus();
			$.ajaxSetup({ cache: false });		
		});

		Calendar.setup({ 
		     inputField :  "fechainicult",
		     ifFormat   :  "%d-%m-%Y",
		     button     :  "calendarcult"
		});
});
	
		function modcult(vopcion,vcodcult) {
			if(jQuery("#tab-editcult").validationEngine('validate')){
				vnomcult=document.getElementById("nomcult").value;
				vdenspoblacion=document.getElementById("denspoblacion").value;
				vareacult=document.getElementById("areacult").value;
				vidtiposiembra=document.getElementById("idtiposiembra").value;
				vfechainicult=document.getElementById("fechainicult").value;
				vfechainicult=vfechainicult.substr(6,9)+"-"+vfechainicult.substr(3,3)+vfechainicult.substr(0,2);
				$.ajax({
					url : "jsp/cultivo-administrar.jsp",
					data : "opcion="+vopcion+"&codcult="+vcodcult+"&nomcult="+vnomcult+"&denspoblacion="+vdenspoblacion+"&areacult="+vareacult+"&idtiposiembra="+vidtiposiembra+"&fechainicult="+vfechainicult,
					success : function(data) {
						$('div#div-actcult').html(data);
						$('div#div-actcult').bPopup({
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
				$('#div-actcult').remove();
				$('#div-modcult').remove();
				$('.calendar').remove();
				$('.b-modal').remove();
				$('.workspace-art').load("jsp/cultivo-registro.jsp");
				},time);
		}
</script>
