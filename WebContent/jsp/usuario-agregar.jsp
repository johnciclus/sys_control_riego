<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoDocumento"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoSiembra"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>

<%--// Algunos cambios jsp/humedad-registro.jsp //--%>

<style type="text/css">
#tab-agrusu{
    margin:0 auto;
	background-color:#fff;
	width:650px;
	height:auto;
	padding:10px;
}

#form {
	border:1px solid #1c160d;
	margin:auto;
	font-size:20px;
	font-variant:small-caps;
	font-weight:bold;
}

#tab-agrusu,#form fieldset,#form input,#form select {
	-webkit-border-radius:5px;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	border-radius:5px;
	behavior: url('ie-style-min.htc');
}

#form legend {
	color:#1c160d;
	font-size:20px;
}

#form ol {
	list-style:none;
}

#form ol li {
	padding-bottom:5px;
}

#form ol li label {
	width:200px;
	display:inline-block;
}

#form input,#form select {
	border:1.5px solid #92d30f;
	text-align:center;
}
#form input.txt ,#form select.txt {
	width:250px;
}

#form input.btn {
	height:30px;
	padding:3px;
	background:#d9f691;
	font-weight:bold;
}

#form input.btn:hover {
	background:#62a80a;
	color:#fff;
}

#formcontent {
	width:960px;
	margin:0 auto;
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
%>
<div id="tab-agrusu" class="validationEngineContainer">
		<fieldset id="form">
			<legend>Agregar Usuario</legend>
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
					%>
					<option value="<%=tipodoc.getIdtipodoc()%>"> <%= tipodoc.getNomdoc() %></option>
					<%}%>
				</select>
			</li>
			<li>
				<label for="nnumdoc">N&uacute;mero Documento</label>
				<input type="text" name="nnumdoc" id="numdoc" class="txt validate[required,custom[integer],min[1]]" />
			</li>
			<li>
				<label for="nnomusu">Nombres</label>
				<input type="text" name="nnomusu" id="nomusu" class="txt validate[required,custom[onlyLetterSp]]" />
			</li>
			<li>
				<label for="napeusu">Apellidos</label>
				<input type="text" name="napeusu" id="apeusu" class="txt validate[required,custom[onlyLetterSp]]" />
			</li>
			<li>
				<label for="ndirusu">Direcci&oacute;n</label>
				<input type="text" name="ndirusu" id="dirusu" class="txt validate[required]" />
			</li>
			<li>
				<label for="ntelusu">Tel&eacute;fono</label>
				<input type="text" name="ntelusu" id="telusu" class="txt validate[required,custom[integer],min[1]]" />
			</li>
			<li>
				<label for="ncorrusu">Correo Electr&oacute;nico</label>
				<input type="text" name="ncorrusu" id="corrusu" class="txt validate[required,custom[email]]" />
			</li>
			<li>
				<label for="nidusu">ID Usuario</label>
				<input type="text" name="nidusu" id="idusu" class="txt validate[required,custom[onlyLetterNumber]]" />
			</li>
			<li>
				<label for="ncontusu">Contraseña</label>
				<input type="text" name="ncontusu" id="contusu" class="txt validate[required,custom[onlyLetterNumber]]" />
			</li>
			<li>
				<br />
			</li>
			<li>
				<input type="button" class="btn" name="bnagrusu" id="bagrusu" value="Agregar" />
				<input type="button" class="btn" name="bncancelar" id="bcancelar" value="Cancelar" />
			</li>
		</ol>
	</fieldset>
	<div id="div-agrusu">
	</div>
</div>

<script type="text/javascript" language="javascript"> 
	require(["validationengine-es","bpopup"], function(){
		jQuery(document).ready(function(){
			$("#idtipodoc").focus();
			jQuery("#tab-agrusu").validationEngine();
		});
	});

	$("#bagrusu").click(function(){
		if(jQuery("#tab-agrusu").validationEngine('validate')){
			vidtipodoc =document.getElementById("idtipodoc").value;
			vnumdoc = document.getElementById("numdoc").value;
			vnomusu = document.getElementById("nomusu").value;
			vapeusu = document.getElementById("apeusu").value;
			vdirusu = document.getElementById("dirusu").value;
			vtelusu = document.getElementById("telusu").value;
			vcorrusu = document.getElementById("corrusu").value;
			vidusu = document.getElementById("idusu").value;
			vcontusu =document.getElementById("contusu").value;

			$.ajax({
				url :"jsp/usuario-administrar.jsp",
				data :"opcion=agrusu&idtipodoc="+vidtipodoc+"&numdoc="+vnumdoc+"&nomusu="+vnomusu+"&apeusu="+vapeusu+"&dirusu="+vdirusu+"&telusu="+vtelusu+"&idusu="+vidusu+"&contusu="+vcontusu+"&corrusu="+vcorrusu,
				success :function(data) {
				$('div#div-agrusu').html(data);
				$('div#div-agrusu').bPopup({
		            modalClose:false		            
		          });
				cerrar(1500);
				}
			});
		}
	});
	$("#bcancelar").click(function() {
		  cerrar(500);
		});	
	function cerrar(time){
		setTimeout(function(){
			$('#div-agrusu').remove();
			$('.b-modal').remove();
			$('.workspace-art').load("jsp/usuario-registro.jsp");
			},time);
	}
</script>