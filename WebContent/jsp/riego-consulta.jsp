<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.CalculoFertilizante"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.MedicionVariables"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>

<style type="text/css">
#divrconsulta caption{
	margin: 0 auto;
}
</style>

<%
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
	//if (usuario==null) response.sendRedirect("Home.jsp?mensaje=Por favor inicie Sesión");    
	
	int codigo = Integer.parseInt(request.getParameter("ncultivos"));
	String fechainicial = request.getParameter("nfechaini");
	String fechafinal = request.getParameter("nfechafin");
	String horainicial = request.getParameter("nhoraini");
	String horafinal = request.getParameter("nhorafin");
	
	MedicionVariables Reporte = new MedicionVariables();
	ArrayList vectorHumedad = Reporte.ConsultaReporteRiego(codigo, fechainicial, fechafinal, horainicial, horafinal);
	Iterator it = vectorHumedad.iterator();
	MedicionVariables humedad;
	
	Cultivo NombreCultivo = new Cultivo();
%>

<table cellpadding="0" cellspacing="0" border="0" class="display" id="tabrconsulta">
	<caption>Registro Riego del Cultivo <%=NombreCultivo.SRnombrecultivo(codigo)%> </caption>
	<thead>
		<tr>
			<th>Nombre Sensor</th>
			<th>Estado Riego</th>
			<th>Fecha Medici&oacute;n</th>
			<th>Hora Medici&oacute;n</th>
		</tr>
	</thead>
	<tbody>
		<%	while (it.hasNext()) {
				humedad = (MedicionVariables) it.next();
		%>
		<tr class="gradeA">
		
			<td><%=humedad.getNomzigbee()%></td>
			<td><%=humedad.getVarhum()%></td>
			<td><%=humedad.getFechamedicion()%></td>
			<td><%=humedad.getHoraRegistro()%></td>
			
		</tr>
		<% } %>
	</tbody>
</table>



<script type="text/javascript" language="javascript">
	require(["datatables"], function(){
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
</script>