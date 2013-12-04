<%@page import="co.edu.Systemteleco.conexion.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>

<style type="text/css">
#div-ractusu{
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
#div-ractusu,#form fieldset,#form input{
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
		
	String acteli = request.getParameter("opcion");
	
	if(acteli.compareTo("actusu")==0) 
	{	
		int tipodocumento = Integer.parseInt(request.getParameter("idtipodoc"));
		int numerodocumento = Integer.parseInt(request.getParameter("numdoc"));
		String pasword = request.getParameter("contusu");
		String login = request.getParameter("idusu");
		String nombre = request.getParameter("nomusu");
		String apellido = request.getParameter("apeusu");
		String direccion = request.getParameter("dirusu");
		int telefono = Integer.parseInt(request.getParameter("telusu"));
		String email = request.getParameter("corrusu");
		int moddocusu = Integer.parseInt(request.getParameter("moddocusu"));
		
		boolean rta = usuario.actualizarUsuario( tipodocumento, pasword, login, nombre, apellido, direccion, telefono, email, numerodocumento, moddocusu);
	%>
		<div id="div-ractusu">
			<fieldset id="form">
				<legend>Actualizando Usuario</legend>
				<ol align="center">
					<% if (!rta) { %>
					<li>
						El registro no ha sido actualizado correctamente
					</li>
					<%}else { %>
					<li>
						El registro  ha sido actualizado correctamente
					</li>
					<%}%>
				</ol>
			</fieldset>
		</div>
	<%}
	if(acteli.compareTo("agrusu")==0) 
	{	
		int tipodocumento = Integer.parseInt(request.getParameter("idtipodoc"));
		int numerodocumento = Integer.parseInt(request.getParameter("numdoc"));
		String pasword = request.getParameter("contusu");
		String login = request.getParameter("idusu");
		String nombre = request.getParameter("nomusu");
		String apellido = request.getParameter("apeusu");
		String direccion = request.getParameter("dirusu");
		int telefono = Integer.parseInt(request.getParameter("telusu"));
		String email = request.getParameter("corrusu");
		boolean rta= usuario.guardar( tipodocumento, pasword, login, nombre, apellido, direccion, telefono, email, numerodocumento);
		%>
		<div id="div-ractusu">
			<fieldset id="form">
				<legend>Agregando Usuario</legend>
				<ol align="center">
					<% if (!rta) { %>
					<li>
						El registro no ha sido agregado correctamente
					</li>
					<%}else { %>
					<li>
						El registro  ha sido agregado correctamente
					</li>
					<%}%>
				</ol>
			</fieldset>
		</div>
		<%}
	if(acteli.compareTo("recusu")==0) 
	{	
		int numerodocumento = Integer.parseInt(request.getParameter("numdoc"));
		boolean rta= true;
		%>
		<div id="div-ractusu">
			<fieldset id="form">
				<legend>Agregando Usuario</legend>
				<ol align="center">
					<% if (rta) { %>
					<li>
						Se ha enviado un correo <%=numerodocumento%>
					</li>
					<%}else { %>
					<li>
						El registro  ha sido agregado correctamente
					</li>
					<%}%>
				</ol>
			</fieldset>
		</div>
		<%}%>