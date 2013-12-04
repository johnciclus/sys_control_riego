<%@page import="co.edu.Systemteleco.conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoSiembra"%>
<%@page import="java.sql.Date"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.RegistroZigbee"%>

<style type="text/css">
#div-ractcult{
	background-color: #fff;
	width:500px;
	height:auto;
	padding:10px;
}
#form {
	border: 1px solid #1c160d;
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}
#div-ractcult,#form fieldset,#form input{
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
#form input{
	border: 1.5px solid #92d30f;
	text-align: center;
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
</style>

<%
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
	if (usuario==null) response.sendRedirect("usuario-acceder.jsp");

	RegistroZigbee Modulozgb = new RegistroZigbee();
	
	String editzgb = request.getParameter("opcion");
	
	String maczigbee =request.getParameter("maczigbee");
	String nombremodulo = request.getParameter("modulo");
	int idcultivo = Integer.parseInt(request.getParameter("idcultivos"));
	
	
	if(editzgb.compareTo("actzgb")==0) 
	{
		String modmaczigbee =request.getParameter("modmaczigbee");		
		
		boolean rta =Modulozgb.actualizarModuloZigbee(modmaczigbee,maczigbee,idcultivo,nombremodulo);
		%>
		<div id="div-ractcult">
			<fieldset id="form">
				<legend>Actualizando Zigbee</legend>
				<ol align="center">
					<% if (rta) { %>
					<li>
						El registro ha sido actualizado correctamente
					</li>
					<%}else { %>
					<li>
						El registro no ha sido actualizado correctamente
					</li>
					<%}%>
				</ol>
			</fieldset>
		</div>
	<%}
	if (editzgb.compareTo("elizgb")==0) 
	{   
		boolean rta = Modulozgb.eliminar(maczigbee);
	%>
		<div id="div-ractcult">
			<fieldset id="form">
				<legend>Eliminando Zigbee</legend>
				<ol align="center">
					<% if (rta) { %>
					<li>
						El registro ha sido eliminando correctamente
					</li>
					<%}else { %>
					<li>
						El registro no ha sido eliminando correctamente
					</li>
					<%}%>
				</ol>
			</fieldset>
		</div>
	<%}
	if (editzgb.compareTo("agrzgb")==0) 
	{   
		boolean rta = Modulozgb.guardar(maczigbee,nombremodulo,idcultivo);
	%>
		<div id="div-ractcult">
			<fieldset id="form">
				<legend>Agregando Zigbee</legend>
				<ol align="center">
					<% if (rta) { %>
					<li>
						El registro ha sido agregado correctamente
					</li>
					<%}else { %>
					<li>
						El registro no ha sido agregado correctamente
					</li>
					<%}%>
				</ol>
			</fieldset>
		</div>
	<%}%>
