 package co.edu.Systemteleco.ClasesTablas;


import java.awt.Color;
import java.awt.image.BufferedImage;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;


import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

import com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.Default;

import co.edu.Systemteleco.conexion.Conexion;

public class cReporteHumeda {
private static String error;
private static Conexion conexion;

public cReporteHumeda(){}

private int idregvar;
private Date fechamedicion;
private int idtipovar;	
private int maczigbee;
private Time HoraRegistro;
private  int varhum;
private String nomzigbee;
private int codcult;






public static String getError() {
	return error;
}

public static void setError(String error) {
	cReporteHumeda.error = error;
}

public static Conexion getConexion() {
	return conexion;
}

public static void setConexion(Conexion conexion) {
	cReporteHumeda.conexion = conexion;
}

public int getIdregvar() {
	return idregvar;
}

public void setIdregvar(int idregvar) {
	this.idregvar = idregvar;
}

public Date getFechamedicion() {
	return fechamedicion;
}

public void setFechamedicion(Date fechamedicion) {
	this.fechamedicion = fechamedicion;
}

public int getIdtipovar() {
	return idtipovar;
}

public void setIdtipovar(int idtipovar) {
	this.idtipovar = idtipovar;
}

public int getMaczigbee() {
	return maczigbee;
}

public void setMaczigbee(int maczigbee) {
	this.maczigbee = maczigbee;
}

public Time getHoraRegistro() {
	return HoraRegistro;
}

public void setHoraRegistro(Time horaRegistro) {
	HoraRegistro = horaRegistro;
}

public int getVarhum() {
	return varhum;
}

public void setVarhum(int varhum) {
	this.varhum = varhum;
}

public String getNomzigbee() {
	return nomzigbee;
}

public void setNomzigbee(String nomzigbee) {
	this.nomzigbee = nomzigbee;
}

public int getCodcult() {
	return codcult;
}

public void setCodcult(int codcult) {
	this.codcult = codcult;
}

/**
 * generabarrasanula es el metodo que se encarga  de realizar la consulta de los datos sobre las mediciones que 
 * se han registrado en la base de datos y se encarga de generar la grafica mostrada por el servlet ImageServlet
 * @param codigocultivo es el argumento que identica de seleccionar el cultivo 
 * @param fechamedicion es el argumento que selecciona la fecha indicada en la que se ralizo  la insecion de los valores de la humedad
 * 
 * @return image que es la imagne generada por jfreechart  con los valores seleccionados de la base de datos
 */

public static BufferedImage generabarrasanula (int codigocultivo, String fechamedicion ){
	BufferedImage image=null;
	PreparedStatement ps;
	ArrayList<cReporteHumeda> humedad = new ArrayList<cReporteHumeda>();
	ResultSet rst;
	Iterator<cReporteHumeda> it;
	setError("");
	try{
		conexion = new Conexion();
		Connection con = conexion.conectar("cantidadFertilizante");
		
		 ps = con.prepareStatement("SELECT registro_zigbee.codcult, medicion_variables.fechamedicion,medicion_variables.varhum, " +
		 		"registro_zigbee.nomzigbee, medicion_variables.idregvar, medicion_variables.HoraRegistro " +
		 		"FROM registro_zigbee,medicion_variables " +
		 		"WHERE registro_zigbee.codcult=? " +
		 		"AND medicion_variables.fechamedicion= ? " +
		 		"AND  registro_zigbee.maczigbee=medicion_variables.maczigbee " +
		 		"ORDER  BY  registro_zigbee.nomzigbee;" );
		
		 Date fecha= new Date (22);
	     fecha=Date.valueOf(fechamedicion);
			
			ps.setInt(1, codigocultivo);
			ps.setDate(2,fecha);
			rst = ps.executeQuery();
			cReporteHumeda dato = new cReporteHumeda();
		DefaultCategoryDataset objDatos = new DefaultCategoryDataset();
		//SimpleDateFormat f = new SimpleDateFormat ("hh:mm.ss am");
		//String hora1 = f.format(rst.getTime(6));	
		while(rst.next())
			
			
				objDatos.setValue(rst.getInt(3) ,rst.getString(4),rst.getTime(6) );
			
			JFreeChart objGrafico = ChartFactory.createBarChart3D("Reporte de Humeda", 
					"Hora (hh:mm:ss)", 
					"Humedad (CB)", objDatos,  
					PlotOrientation.VERTICAL, true, true, false);
			
			 image = objGrafico.createBufferedImage(600,400);
			
			rst.close();
			rst=null;
			
			ps.close();
			ps=null;
			
			con.close();
			con=null;
			
		
	}catch (Exception e) {
		// TODO: handle exception
	
	}
	return image;
	
}




}
