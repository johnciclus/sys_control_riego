<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.Cultivo"%>
<%@page import="co.edu.Systemteleco.RegistroUsuario.Usuario"%>

<style type="text/css">
#tabrconsulta input.btn{
	border: 1.5px solid #92d30f;
	text-align: center;
	height: 30px;
	padding: 3px;
	background: #d9f691;
	font-weight: bold;
	-webkit-border-radius:5px; 
	-moz-border-radius:5px; 
	-khtml-border-radius:5px;	
	border-radius: 5px;
	behavior:url(ie-style-min.htc);
}
#tabrconsulta input.btn:hover {
	background: #62a80a;
	color: #fff;
}
#tab-regcult {
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
	vectorCultivo = idcultivo.codcults();
	
	String fechacultivo="";
%>	
<div id="tab-regcult">
	<table cellpadding="0" cellspacing="0" border="0" class="display" id="tabrconsulta">
		<caption>Registro Cultivos</caption>
		<thead>
			<tr>
				<th>Fecha de inicio</th>
				<th>Nombre</th>
				<th>Densidad de poblaci&oacute;n <br /> sembrada</th>
				<th>&Aacute;rea</th>
				<th>Tipo de siembra</th>
				<%
					if (usuario!=null)
					{	
				%>
	      		<th>&nbsp;</th>
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
		      <td><%=cultivos.getDenspoblacion()%></td>
		      <td><%=cultivos.getAreacult()%></td>
		      <td><%=cultivos.SRtipodesiembra(cultivos.getIdtiposiembra())%></td>
		      	<%
					if (usuario!=null)
					{	
				%>
		      <td><input type="button" class="btn" name="editcult" id="beditcult" value="Editar" onClick="editcult('<%=cultivos.getCodcult()%>')" /></td>
		      <td><input type="button" class="btn" name="regeta" id="bregeta" value="Reg. Etapa" onClick="regetapa('<%=cultivos.getCodcult()%>')" /></td>
		      	<%
					}	
				%>
		    </tr>
    		<%}%>
    	</tbody>
  </table>
	<div id="div-modcult" class="div-popup">
			
	</div> 
</div>

<script type="text/javascript" language="javascript"> 
	require(["datatables", "bpopup"], function(){
		$(document).ready(function() {
			
			oTable = $('#tabrconsulta').dataTable({
				"bJQueryUI" : true,
				"sPaginationType" : "full_numbers",
				"aLengthMenu" : [ [ 10, 25, 50,100, -1 ], [ 10, 25, 50,100, "Todos" ] ],
				"oLanguage" : {  "sUrl": "js/datatables-es" }
			});
		});
	});	

	function editcult(vcodcult){
		$.ajax({
			url : "jsp/cultivo-editar.jsp",
			data : "codcult="+vcodcult,
			success : function(data) {
				$('div#div-modcult').html(data);
				$('div#div-modcult').bPopup({
		            modalClose: false
		          });
				}
		});
	}
	
	function regetapa(vcodcult){
		$.ajax({
			url : "jsp/etapa-agregar.jsp",
			data : "codcult="+vcodcult,
			success : function(data) {
				$('div#div-modcult').html(data);
				$('div#div-modcult').bPopup({
		            modalClose: false
		          });
				}
		});
	}
</script>                 