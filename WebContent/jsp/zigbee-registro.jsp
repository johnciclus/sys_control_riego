<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.TipoFertilizantes"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.RegistroZigbee"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>

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
#tab-regzgb {
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}
</style>

<%
	ArrayList vectormodulos = new ArrayList();
	Usuario usuario =(Usuario)session.getAttribute("Usuario");
	
	RegistroZigbee Mzigbee = new RegistroZigbee();
	Cultivo cultivo = new Cultivo ();
	Iterator it;
	
	vectormodulos = Mzigbee. MacZigbee();
%>

<div id="tab-regzgb">
	<table cellpadding="0" cellspacing="0" border="0" class="display" id="tabrconsulta">
		<caption>M&oacute;dulo Zigbee Registrados</caption>
		<thead>
			<tr>
				<th>Mac M&oacute;dulo</th>
				<th>Nombre del M&oacute;dulo</th>
				<th>Cultivo</th>
				<%
					if (usuario!=null)
					{	
				%>
	      		<th>&nbsp;</th>
	      		<%
					}	
				%>
			</tr>
		</thead>
		<tbody>
			<%
				it = vectormodulos.iterator();
				while(it.hasNext()){
					RegistroZigbee Mzigbee1 = new RegistroZigbee();
					Mzigbee1 = (RegistroZigbee)it.next();
			%>
			<tr class="gradeA">    
		      <td><%=Mzigbee1.getMaczigbee() %></td>
		      <td><%=Mzigbee1.getNomzigbee()%></td>
		      <td><%=cultivo.SRnombrecultivo(Mzigbee1.getCodcult()) %></td>
		      <%
					if (usuario!=null)
					{	
				%>
	           <td><input type="button" class="btn" name="modzgb" id="bmodzgb" value="Editar" onClick="editzgb('<%=Mzigbee1.getMaczigbee()%>') " /></td>
	           <%
					}	
				%>
	    	</tr>
	    	<%}%>
	    </tbody>
 	</table>
  	<div id="div-editzgb" class="div-popup">
			
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

	function editzgb(vmaczigbee) {
		$.ajax({
			url : "jsp/zigbee-editar.jsp",
			data : "maczigbee="+vmaczigbee,
			success : function(data) {
				$('div#div-editzgb').html(data);
				$('div#div-editzgb').bPopup(data);
				}
		});
	}
</script>    
