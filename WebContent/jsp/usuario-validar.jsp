<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario" %>

<style type="text/css">
#div-valusu{
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
#div-valusu,#form fieldset,#form input{
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
	String login = request.getParameter("usuario");
	String password = request.getParameter("clave");
	
	Usuario datosUsuario = new Usuario();
	
	boolean rta = datosUsuario.verificarUsuario(login, password);		
%>
		<div id="div-valusu">
			<fieldset id="form">
				<legend>Autenticando Usuario</legend>
				<ol align="center">
					<% if (rta) { 
						session.setAttribute("Usuario",datosUsuario);						
					%>
					<input type="hidden" name="nsesion" id="sesion" value="1" />
					<li>
						Bienvenido
					</li>
					<%}else { 
					%>
					<input type="hidden" name="nsesion" id="sesion" value="0" />
					<li>
						Datos incorrectos, intent&aacute;lo nuevamente.
					</li>
					<%}%>				
				</ol>
			</fieldset>
		</div>