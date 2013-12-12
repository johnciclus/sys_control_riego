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
	ArrayList vectorHumedad = Reporte.ConsultaReporteHumeda(codigo, fechainicial, fechafinal, horainicial, horafinal);
	Iterator it = vectorHumedad.iterator();
	
	MedicionVariables humedad;
%>

<div id='contvisual'>
	<div id='visualizador'>
		
	</div>
</div>

<script type="text/javascript">
	var mediciones = [];
	var nombres = [];
	var seriesOptions = [];
	var med, nombre, fecha, hora, f, h;
	var datos = {};
	
	<%	while (it.hasNext()) {
		humedad = (MedicionVariables) it.next();
	%>
		med = {
			'nombre':	'<%=humedad.getNomzigbee()%>',
			'tipo':	'<%=humedad.getTipo()%>',
			'fecha':	'<%=humedad.getFechamedicion()%>',
			'hora': 	'<%=humedad.getHoraRegistro()%>',
			'hum':		<%=humedad.getVarhum()%>
		};
		mediciones.push(med);
	<% } %>
		
	for(var i in mediciones){
		nombre = mediciones[i].nombre;
		if(!datos[nombre]){
			nombres.push(nombre);
			datos[nombre] = [];
		}
		fecha = mediciones[i].fecha;
		f = fecha.split('-');
		hora = mediciones[i].hora;
		h = hora.split(':');
		datos[nombre].push([Date.UTC(f[0], f[1]-1, f[2], h[0], h[1], h[2]), mediciones[i].hum]);
	}
	
	for(var i in nombres){
		seriesOptions.push({
			name : nombres[i],
			data : datos[nombres[i]],
			lineWidth : 0,
			marker : {
				enabled : true,
				radius : 4
			}
		});	
	}
	
	seriesOptions.push({
        type: 'line',
        name: 'Umbral de Riego',
        data: [
               [datos[nombres[0]][0][0],90],
               [datos[nombres[0]][2][0],90],
               [datos[nombres[0]][4][0],60]
               ]
    });
	
	require(["highstock"], function(){
		
		Highcharts.setOptions({
		    lang: {
		    	months: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 
		    			 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
		        weekdays: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado']} 
		});
		
		
		var chartOptions = {
			chart: {
			   renderTo: 'visualizador'
			},
			title: {
	        	text: 'Registro de mediciones'
	       	},
	       	series : seriesOptions
	       	
			/*rangeSelector: {
		        selected: 4
		    },
			rangeSelector : {
				enabled: false
			},*/
	       	
	       	/*,
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
	       	labels: {
	    		formatter: function() {
	    			return (this.value > 0 ? '+' : '') + this.value + '%';
	    		}
	    	},
	    	plotOptions: {
		    	series: {
		    		compare: 'percent'
		    	}
		    },
		    tooltip: {
		    	pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.change}%)<br/>'
		    },*/
			
		};
		
		var chart = new Highcharts.StockChart( chartOptions );
		
		
		
	});
	
</script>

