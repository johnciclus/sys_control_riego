<%@page import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection  conexion = DriverManager.getConnection("jdbc:mysql://localhost/basesystemteleco", "root", "piolin");

Statement Estamento = conexion.createStatement();
ResultSet rs = Estamento.executeQuery("select * from medicion_variables");
%>
<table>
	<tr>
		<td>Id</td>
		<td>Tipo</td>
		<td>Mac ZigBee</td>
		<td>Val. Humedad</td>
		<td>Fecha de medici�n</td>
		<td>Hora de medici�n</td>
	</tr>
<% while (rs.next()) { %>	
	<tr>
		<td> <%= rs.getString("idregvar")%>		</td>
		<td> <%= rs.getString("idtipovar")%>	</td>
		<td> <%= rs.getString("maczigbee")%>	</td>
		<td> <%= rs.getString("varhum")%> 		</td>
		<td> <%= rs.getString("fechamedicion")%></td>
		<td> <%= rs.getString("HoraRegistro")%>	</td>
	</tr>	
<% } %>
</table>
<%
rs.close();
Estamento.close();
conexion.close();

%>