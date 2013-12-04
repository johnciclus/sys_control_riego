<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
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
#tab-regeta{
	font-size: 20px;
	font-variant: small-caps;
	font-weight: bold;
}
</style>
<%
	Usuario usuario = (Usuario) session.getAttribute("Usuario");
	ArrayList vectorCultivo = new ArrayList();
	Cultivo idcultivo = new Cultivo();
	Iterator it;
	vectorCultivo = idcultivo.cultivoetapa();
	
	String fechacultivo="";
%>	
<div id="tab-regeta">
	<table cellpadding="0" cellspacing="0" border="0" class="display" id="tabrconsulta">
		<caption>Registro Etapas</caption>
		<thead>
			<tr>
				<th>Fecha de inicio</th>
				<th>Nombre cultivo</th>
				<th>Nombre etapa</th>
				<th>Duraci&oacute;n (d&iacute;as)</th>
				<th>L&iacute;mite de humedad</th>
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
				it = vectorCultivo.iterator();
				while (it.hasNext()) {
					Cultivo cultivos = new Cultivo();
					cultivos = (Cultivo) it.next();
					fechacultivo=cultivos.getFechacult().toString();
					fechacultivo=fechacultivo.substring(8,10)+"-"+fechacultivo.substring(5,7)+"-"+fechacultivo.substring(0,4);
					
			%>
			<tr class="gradeA">
    	      <td><%=fechacultivo%></td>
		      <td><%=cultivos.getNomcult()%></td>
		      <td><%=cultivos.getNometapa()%></td>
		      <td><%=cultivos.getDuretapa()%></td>
		      <td><%=cultivos.getLimhumedad()%></td>
		      <%
					if (usuario!=null)
					{	
				%>
		      <td><input type="button" class="btn" name="editcult" id="beditcult" value="Editar" onClick="editeta('<%=cultivos.getCodcult()%>','<%=cultivos.getIdetapa()%>')" /></td>
		      <%
					}	
				%>
		    </tr>
    		<%}%>
    	</tbody>
  </table>
	<div id="div-modetapa" class="div-popup">
			
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

	function editeta(vcodcult,videtapa){
		$.ajax({
			url : "jsp/etapa-editar.jsp",
			data :  "codcult="+vcodcult+"&idetapa="+videtapa,
			success : function(data) {
				$('div#div-modetapa').html(data);
				$('div#div-modetapa').bPopup({
		            modalClose: false
		          });
				}
		});
	}
</script>                 