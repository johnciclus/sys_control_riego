<%@page import="co.edu.Systemteleco.conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoSiembra"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.ParseException"%>

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
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
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

	Cultivo cultivo = new Cultivo();

	String acteli = request.getParameter("opcion");

	if (acteli.compareTo("actcult")==0) 
	{
		int codigocultivo = Integer.parseInt(request.getParameter("codcult"));
		String nombrecultivo = request.getParameter("nomcult");
		int densidadpoblacion = Integer.parseInt(request.getParameter("denspoblacion"));
		int areacultivo = Integer.parseInt(request.getParameter("areacult"));
		int idtiposiembra= Integer.parseInt(request.getParameter("idtiposiembra"));
		String fechainicultivo= request.getParameter("fechainicult");
		
		boolean rta = cultivo.actualizarcultivo(codigocultivo,nombrecultivo,densidadpoblacion,areacultivo,idtiposiembra,fechainicultivo);		
		%>
		<div id="div-ractcult">
			<fieldset id="form">
				<legend>Actualizando Cultivo</legend>
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
	if (acteli.compareTo("elicult")==0) 
	{   
		int codigocultivo = Integer.parseInt(request.getParameter("codcult"));
		boolean rta = cultivo.eliminar(codigocultivo);
		%>
		<div id="div-ractcult">
			<fieldset id="form">
				<legend>Eliminando Cultivo</legend>
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
	if (acteli.compareTo("agrcult")==0) 
	{   
		String nombrecultivo = request.getParameter("nomcult");
		int densidadpoblacion = Integer.parseInt(request.getParameter("denspoblacion"));
		int areacultivo = Integer.parseInt(request.getParameter("areacult"));
		int idtiposiembra= Integer.parseInt(request.getParameter("idtiposiembra"));
		String fechainicultivo= request.getParameter("fechainicult");
		int documentousuario=usuario.getNumeroDocumento();
		
		boolean rta = cultivo.guardar(nombrecultivo,densidadpoblacion,areacultivo,idtiposiembra,fechainicultivo,documentousuario);
		%>
		<div id="div-ractcult">
			<fieldset id="form">
				<legend>Agregar Cultivo</legend>
				<ol align="center">
					<% if (!rta) { %>
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
