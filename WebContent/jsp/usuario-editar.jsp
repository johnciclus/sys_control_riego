<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoDocumento"%>

<%--// Algunos cambios jsp/humedad-registro.jsp //--%>

<style type="text/css">
#tab-editusu{
	background-color: #fff;
	width:600px;
	height:450px;
	padding:10px;
}
#form{
	border: 1px solid #1c160d;
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}

#tab-editusu,#form fieldset,#form input,#form select {
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
	width: 250px;
	display: inline-block;
}

#form input,#form select {
	border: 1.5px solid #92d30f;
	text-align: center;
}
#form input.txt ,#form select.txt {
	width: 250px;
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

	ArrayList vectorUsuario = new ArrayList();
	Usuario idusuario = new Usuario();
	vectorUsuario = idusuario.DatosUsuario();
	Iterator it;
	
	ArrayList vectorTipoDocumento = new ArrayList();
	TipoDocumento tipodocs = new TipoDocumento();
	vectorTipoDocumento = tipodocs.idtipodocs();
	Iterator itd;
	
	int docusuario = Integer.parseInt(request.getParameter("docusu"));
	
	it = vectorUsuario.iterator();
	while (it.hasNext()) {
		Usuario usuarios = new Usuario();
		usuarios = (Usuario) it.next();
		if(usuarios.getNumeroDocumento()==docusuario)
		{
%>
<div id="tab-editusu" class="validationEngineContainer">
	<fieldset id="form">
		<legend>Usuario a Modificar</legend>
		<ol align="center">
			<li>
				<label for="nidtipodoc">Tipo Documento</label> 
				<select name="nidtipodoc" id="idtipodoc" class="txt validate[required]">
					<option value>Seleccione Tipo</option>
					<%
					itd = vectorTipoDocumento.iterator();
					while(itd.hasNext()){
						TipoDocumento tipodoc = new TipoDocumento();
						tipodoc = (TipoDocumento)itd.next();
							if(usuarios.getIdtipoDocumento()==tipodoc.getIdtipodoc()){
					%>
					<option value="<%=tipodoc.getIdtipodoc()%>" selected> <%=tipodoc.getNomdoc()%></option>
					<%}else{%>
					<option value="<%=tipodoc.getIdtipodoc()%>"> <%=tipodoc.getNomdoc()%></option>
					<%}}%>
				</select>
			</li>
			<li>
				<label for="nnumdoc">N&uacute;mero Documento</label>
				<input type="text" name="nnumdoc" id="numdoc" value="<%=usuarios.getNumeroDocumento()%>" class="txt validate[required,custom[integer],min[1]]" />
			</li>
			<li>
				<label for="nnomusu">Nombres</label>
				<input type="text" name="nnomusu"  id="nomusu" value="<%=usuarios.getNombre()%>" class="txt validate[required,custom[onlyLetterSp]]" />
			</li>
			<li>
				<label for="napeusu">Apellidos</label>
				<input type="text" name="napeusu"  id="apeusu" value="<%=usuarios.getApellido()%>" class="txt validate[required,custom[onlyLetterSp]]" />
			</li>
			<li>
				<label for="ndirusu">Direcci&oacute;n</label>
				<input type="text" name="ndirusu"  id="dirusu" value="<%=usuarios.getDireccion()%>" class="txt validate[required]" />
			</li>
			<li>
				<label for="ntelusu">Tel&eacute;fono</label>
				<input type="text" name="ntelusu"  id="telusu" value="<%=usuarios.getTelefono()%>" class="txt validate[required,custom[integer],min[1]]" />
			</li>
			<li>
				<label for="ncorrusu">Correo Electr&oacute;nico</label>
				<input type="text" name="ncorrusu"  id="corrusu" value="<%=usuarios.getEmail()%>" class="txt validate[required,custom[email]]" />
			</li>
			<li>
				<label for="nidusu">ID Usuario</label>
				<input type="text" name="nidusu"  id="idusu" value="<%=usuarios.getLogin()%>" class="txt validate[required,custom[onlyLetterNumber]]" />
			</li>
			<li>
				<label for="ncontusu">Contraseña</label>
				<input type="text" name="ncontusu"  id="contusu" value="<%=usuarios.getPassword()%>" class="txt validate[required,custom[onlyLetterNumber]]" />
			</li>
			<li>
				<br />
			</li>
			<li>
				<input type="button" class="btn" name="bnactusu" id="bactusu" value="Actualizar" onclick="modusu('actusu','<%=usuario.getNumeroDocumento()%>')" />
				<%-- 
				<input type="button" class="btn" name="bneliusu" id="beliusu" value="Eliminar" onclick="modusu('eliusu','<%=usuario.getNumeroDocumento()%>')" />
				--%>
				<input type="button" class="btn" name="bncancelar" id="bcancelar" value="Cancelar">
			</li>
		</ol>
	</fieldset>
	<div id="div-actusu">
	
	</div>
</div>
<%}}%>
<script type="text/javascript" language="javascript"> 
	require(["validationengine-es"], function(){
		jQuery(document).ready(function(){
			$("#idtipodoc").focus();
			jQuery("#tab-editusu").validationEngine();
		});
	});
		function modusu(vopcion,vmoddocusu) {
			if(jQuery("#tab-editusu").validationEngine('validate')){
				vidtipodoc =document.getElementById("idtipodoc").value;
				vnumdoc =document.getElementById("numdoc").value;
				vnomusu =document.getElementById("nomusu").value;
				vapeusu =document.getElementById("apeusu").value;
				vdirusu =document.getElementById("dirusu").value;
				vtelusu =document.getElementById("telusu").value;
				vcorrusu =document.getElementById("corrusu").value;
				vidusu =document.getElementById("idusu").value;
				vcontusu =document.getElementById("contusu").value;
	
				$.ajax({
					url : "jsp/usuario-administrar.jsp",
					data : "opcion="+vopcion+"&moddocusu="+vmoddocusu+"&idtipodoc="+vidtipodoc+"&numdoc="+vnumdoc+"&nomusu="+vnomusu+"&apeusu="+vapeusu+"&dirusu="+vdirusu+"&telusu="+vtelusu+"&idusu="+vidusu+"&contusu="+vcontusu+"&corrusu="+vcorrusu,
					success : function(data) {
						$('div#div-actusu').html(data);
						$('div#div-actusu').bPopup({
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
				$('#div-actusu').remove();
				$('#div-editusu').remove();
				$('.b-modal').remove();
				$('.workspace-art').load("jsp/usuario-registro.jsp");
				},time);
		}
</script>
