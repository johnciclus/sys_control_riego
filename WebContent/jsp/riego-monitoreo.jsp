<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="co.edu.Systemteleco.ClasesTablas.MedicionVariables"%>

<%	
	int codigo = Integer.parseInt(request.getParameter("ncultivos"));
	String fechainicial = request.getParameter("nfechaini");
	String fechafinal = request.getParameter("nfechafin");
	String horainicial = request.getParameter("nhoraini");
	String horafinal = request.getParameter("nhorafin");
	
	MedicionVariables Reporte = new MedicionVariables();
	ArrayList vectorHumedad = Reporte.ConsultaReporteRiego(codigo, fechainicial, fechafinal, horainicial, horafinal);
	Iterator it = vectorHumedad.iterator();
	
	MedicionVariables humedad;
%>

<div id='contvisual'>
	<div id='visualizador'>
		
	</div>
</div>

<script type="text/javascript">
	var mediciones = [];
	var datos = [];
	var med, fecha, hora, f, h;
	
	<%	while (it.hasNext()) {
		humedad = (MedicionVariables) it.next();
	%>
		med = {
			'fecha':	'<%=humedad.getFechamedicion()%>',
			'hora': 	'<%=humedad.getHoraRegistro()%>',
			'estado':	 <%=humedad.getVarhum()%>
		};
		mediciones.push(med);
	<% } %>
	
	for(var i in mediciones){
		fecha = mediciones[i].fecha;
		f = fecha.split('-');
		hora = mediciones[i].hora;
		h = hora.split(':');
		datos.push([Date.UTC(f[0], f[1]-1, f[2], h[0], h[1], h[2]), mediciones[i].estado]);	
	}
	
	require(["highstock"], function(){
				
		Highcharts.setOptions({
		    lang: {
		    	months: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 
		    			 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
		        weekdays: ['Domingo', 'Lunes', 'Martes', 'Mi&eacute;rcoles', 'Jueves', 'Viernes', 'Sábado']} 
		});
		
		var chartOptions = {
			chart: {
			   renderTo: 'visualizador'
			},
			rangeSelector : {
				enabled: false
			},
	       	title: {
	        	text: 'Registro de mediciones'
	       	},
	       	tooltip: {
	        	crosshairs: true,
	       		formatter: function() {
	            	var serie = this.series;
	            	var s = '<b>' + Highcharts.dateFormat('%B %e, %Y', this.x) + '</b><br>'+
	             		'<b>' + Highcharts.dateFormat('%H:%M:%S', this.x) + '</b><br>'+
	             		'Valor: <b>' + this.y + '</b><br/>';
	             	return s;
	         	}
	       	},
	       	yAxis: {
	        	title: {
	               text: 'Estado'
	        	}
	       	},
			series : [{
				name : 'Registro del riego',
				data : datos,
				lineWidth : 0,
				marker : {
					enabled : true,
					radius : 4
				}
			}]
		};
		
		var chart = new Highcharts.StockChart( chartOptions );
	});
	
</script>

