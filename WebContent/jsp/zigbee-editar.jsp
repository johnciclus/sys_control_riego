<%@page import="co.edu.Systemteleco.ClasesTablas.RegistroZigbee"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>

<%--// Algunos cambios jsp/humedad-registro.jsp //--%>

<style type="text/css">
#tab-editzgb{
	background-color: #fff;
	width:550px;
	height:260px;
	padding:10px;
}

#form {
	border: 1px solid #1c160d;
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}

#tab-editzgb,#form fieldset,#form input,#form select {
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

	ArrayList vectorCultivo = new ArrayList();
	Cultivo cultivo1 = new Cultivo();
	Cultivo nombrecul = new Cultivo();
	Iterator it;
	vectorCultivo = cultivo1.codcults();
	ArrayList vectormodulozigbee = new ArrayList();
	RegistroZigbee zigbee = new RegistroZigbee();
	String idmodulo = request.getParameter("maczigbee");
	
	zigbee.buscarModuloZigbee(idmodulo);
%>
<div id="tab-editzgb" class="validationEngineContainer">
	<fieldset id="form">
		<legend>Modificar Zigbee</legend>
			<ol align="center">
				<li>
					<label for="nmaczigbee">Mac Zigbee</label>
				 	<input type="text" name="nmaczigbee" id="maczigbee" value="<%=zigbee.getMaczigbee()%>" class="validate[required,custom[onlyLetterNumber]]" />
				 </li>
				<li>
					<label for="nmodulo">Nombre del M&oacute;dulo</label>
					<input type="text" name="nmodulo" id="modulo"  value="<%=zigbee.getNomzigbee()%>" class="validate[required,custom[onlyLetterNumberSp]]" />
				</li>
				<li>
					<label for="nidcultivos">Cultivo al que Pertenece</label> 
					<select	name="nidcultivos" id="idcultivos" class="validate[required]">
						<option value>Seleccione Tipo</option>
						<%
							it = vectorCultivo.iterator();
							while (it.hasNext()) {
								Cultivo cultivos = new Cultivo();
								cultivos = (Cultivo) it.next();
								if(zigbee.getCodcult()==cultivos.getCodcult()){
						%>
						<option value="<%=cultivos.getCodcult()%>" selected><%=cultivos.getNomcult()%></option>
						<%}else{%>
						<option value="<%=cultivos.getCodcult()%>"><%=cultivos.getNomcult()%></option>
						<%}}%>
					</select>
				</li>
				<li>
					<br />
				</li>
				<li>
				<input type="button" class="btn" name="nactcult" id="actcult" value="Actualizar" onclick="modzgb('actzgb','<%=zigbee.getMaczigbee()%>')" />
				<input type="button" class="btn" name="nelicult" id="elicult" value="Eliminar" onclick="modzgb('elizgb','<%=zigbee.getMaczigbee()%>')" />
				<input type="button" class="btn" name="bncancelar" id="bcancelar" value="Cancelar">
			</li>
		</ol>
	</fieldset>
	<div id="div-actzbg">
	</div>
</div>

<script type="text/javascript" language="javascript"> 
	require(["validationengine-es"], function(){
		jQuery(document).ready(function(){
			$("#maczigbee").focus();
			jQuery("#tab-editzgb").validationEngine();
		});
	});
		function modzgb(vopcion,vmodmaczgb) {
			if(jQuery("#tab-editzgb").validationEngine('validate')){
				vmaczgb=document.getElementById("maczigbee").value;
				vmodulo=document.getElementById("modulo").value;
				vidcultivos=document.getElementById("idcultivos").value;
				$.ajax({
					url : "jsp/zigbee-administrar.jsp",
					data : "opcion="+vopcion+"&modmaczigbee="+vmodmaczgb+"&maczigbee="+vmaczgb+"&modulo="+vmodulo+"&idcultivos="+vidcultivos,
					success : function(data) {
						$('div#div-actzbg').html(data);
						$('div#div-actzbg').bPopup({
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
				$('#div-actzbg').remove();
				$('#div-editzgb').remove();
				$('.b-modal').remove();
				$('.workspace-art').load("jsp/zigbee-registro.jsp");
				},time);
		}
</script>

   