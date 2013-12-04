<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoDocumento"%>

<style type="text/css">
#tabrconsulta input{
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	behavior: url('ie-style-min.htc');
}
#tabrconsulta input{
	border: 1.5px solid #92d30f;
	text-align: center;
}

#tabrconsulta input.btn {
	height: 30px;
	padding: 3px;
	background: #d9f691;
	font-weight: bold;
}
#tabrconsulta input.btn:hover {
	background: #62a80a;
	color: #fff;
}
#tab-regusu{
font-size: 20px;
font-variant: small-caps;
font-weight: bold;
}
</style>

<%
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
	if (usuario==null) response.sendRedirect("usuario-acceder.jsp");

	ArrayList vectorUsuario = new ArrayList();
	Usuario idusuario = new Usuario();
	Iterator it;
	vectorUsuario = idusuario.DatosUsuario();
	
	ArrayList vectorTipoDocumento = new ArrayList();
	TipoDocumento tipodocs = new TipoDocumento();
	vectorTipoDocumento = tipodocs.idtipodocs();
	Iterator itd;
	String tipodocumento="";
%>	
<div id="tab-regusu">
	<table cellpadding="0" cellspacing="0" border="0" class="display" id="tabrconsulta">
		<caption>Registro Usuarios</caption>
		<thead>
			<tr>
				<th>Tipo Documento</th>
				<th>N&uacute;umero Documento</th>
				<th>Nombres</th>
				<th>Apellidos</th>
				<%--
				<th>Direcci&oacute;n</th>
	      		<th>Tel&eacute;fono</th>
	      		<th>Correo Electr&oacute;nico</th>
	      		<th>ID Usuario</th>
	      		<th>Contraseña</th>
	      		 --%>
	      		<th>&nbsp;</th>
			</tr>
			</thead>
		<tbody>
			<%
				it = vectorUsuario.iterator();
				while (it.hasNext()) {
					Usuario usuarios = new Usuario();
					usuarios = (Usuario) it.next();
					
					itd = vectorTipoDocumento.iterator();
					while(itd.hasNext()){
						TipoDocumento tipodoc = new TipoDocumento();
						tipodoc = (TipoDocumento)itd.next();
						if(usuarios.getIdtipoDocumento()== tipodoc.getIdtipodoc())
						{tipodocumento=tipodoc.getNomdoc();}
					}
			%>
			<tr class="gradeA">
    	      <td><%=tipodocumento%></td>
		      <td><%=usuarios.getNumeroDocumento()%></td>
		      <td><%=usuarios.getNombre()%></td>
		      <td><%=usuarios.getApellido()%></td>
		      <%--
		      <td><%=usuarios.getDireccion()%></td>
		      <td><%=usuarios.getTelefono()%></td>
		       <td><%=usuarios.getEmail()%></td>
		      <td><%=usuarios.getLogin()%></td>
		      <td><%=usuarios.getPassword()%></td>		
		      --%>      
		      <td><input type="button" class="btn" name="editusu" id="beditusu" value="Editar" onClick="editusu('<%=usuarios.getNumeroDocumento()%>')"  /></td>
		    </tr>
    		<%}%>
    	</tbody>
  </table>
	<div id="div-editusu" class="div-popup">
			
	</div> 
</div>

<script type="text/javascript" language="javascript"> 
	require(["datatables", "bpopup"], function(){
		$(document).ready(function() {
			oTable = $('#tabrconsulta').dataTable({
				"bJQueryUI" : true,
				"sPaginationType" : "full_numbers",
				"aLengthMenu" : [ [ 10, 25, 50,100, -1 ], [ 10, 25, 50,100, "Todos" ] ],
				"oLanguage" : {
					 "sUrl": "js/datatables-es"
					}
			});
		});
	});	

	function editusu(vdocusu) {
		$.ajax({
			url : "jsp/usuario-editar.jsp",
			data : "docusu="+vdocusu,
			success : function(data) {
				$('div#div-editusu').html(data);
				$('div#div-editusu').bPopup({
		            modalClose: false
		          });
				}
		});
	}
</script>                 