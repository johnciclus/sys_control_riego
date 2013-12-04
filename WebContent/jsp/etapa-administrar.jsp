<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>

<style type="text/css">
#div-ractetapa{
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
#div-ractetapa,#form fieldset,#form input{
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

	Cultivo cultivo = new Cultivo();
	
	String acteli = request.getParameter("opcion");
	
	if (acteli.compareTo("actetapa")==0) 
	{
		int codigocultivo = Integer.parseInt(request.getParameter("codcult"));
		int idetapa = Integer.parseInt(request.getParameter("idetapa"));
		String nombreetapa = request.getParameter("nometapa");
		int duracionetapa = Integer.parseInt(request.getParameter("duretapa"));
		int limitehumedad = Integer.parseInt(request.getParameter("limhumedad"));
		 
		System.out.println("idetapa: "+idetapa+" codigocultivo: "+codigocultivo+" nombreetapa: "+nombreetapa+" limitehumedad: "+limitehumedad+" duracionetapa: "+duracionetapa);
		
		boolean rta = cultivo.actualizaretapa(idetapa,codigocultivo,nombreetapa,limitehumedad,duracionetapa);
		%>
		<div id="div-ractetapa">
			<fieldset id="form">
				<legend>Actualizando Etapa</legend>
				<ol align="center">
					<% if (!rta) { %>
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
	if (acteli.compareTo("elietapa")==0) 
	{   
		int codigocultivo = Integer.parseInt(request.getParameter("codcult"));
		int idetapa = Integer.parseInt(request.getParameter("idetapa"));

		boolean rta = cultivo.eliminaretapa(idetapa,codigocultivo);
		%>
		<div id="div-ractetapa">
			<fieldset id="form">
				<legend>Eliminando Etapa</legend>
				<ol align="center">
					<% if (!rta) { %>
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
	if (acteli.compareTo("agretapa")==0) 
	{   
		int codigocultivo = Integer.parseInt(request.getParameter("codcult"));
		String nombreetapa = request.getParameter("nometapa");
		int duracionetapa = Integer.parseInt(request.getParameter("duretapa"));
		int limitehumedad = Integer.parseInt(request.getParameter("limhumedad"));
		 
		boolean rta = cultivo.registraretapa(codigocultivo,nombreetapa,limitehumedad,duracionetapa);
		%>
		<div id="div-ractetapa">
			<fieldset id="form">
				<legend>Registrar Etapa</legend>
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