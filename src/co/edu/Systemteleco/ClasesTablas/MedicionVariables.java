package co.edu.Systemteleco.ClasesTablas;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.ArrayList;

import co.edu.Systemteleco.conexion.Conexion;

public class MedicionVariables {
	private int idregvar;
	private Date fechamedicion;
	private int idtipovar;	
	private int maczigbee;
	private Time HoraRegistro;
	private  int varhum;
	private String nomzigbee;
	private String tipo;
	private int codcult;
	
	private Conexion conexion;

 	public MedicionVariables() {
		this.idregvar=0;
		this.idtipovar=0;
		this.maczigbee=0;
		this.varhum=0;
		this.codcult=0;
		this.nomzigbee="";
		this.tipo = "";
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
	
	public String getTipo() {
		return tipo;
	}

	public void setTipo(String nomzigbee) {
		this.tipo = tipo;
	}

	public int getCodcult() {
		return codcult;
	}

	public void setCodcult(int codcult) {
		this.codcult = codcult;
	}

	public Conexion getConexion() {
		return conexion;
	}

	public void setConexion(Conexion conexion) {
		this.conexion = conexion;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idregvar;
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MedicionVariables other = (MedicionVariables) obj;
		if (idregvar != other.idregvar)
			return false;
		return true;
	}


/**
 * el primer metodo de la clase MedicionVariables se llama idtipovars y esta encargado 
 * de obtener informacion del tipo de variables que ahy en la base de datos
 * @return Variables es un vector con la informacion de la tabla 
 */
	 
	
	public ArrayList idregvar(){
		
		ArrayList Variables = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idtipovars");

			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM medicion_variables ");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				MedicionVariables medivariables = new MedicionVariables();
				medivariables.setIdregvar(rst.getInt(1));
				medivariables.setFechamedicion(rst.getDate(2));
				medivariables.setIdtipovar(rst.getInt(3));
				medivariables.setMaczigbee(rst.getInt(4));
				
				Variables.add(medivariables);
			}
			
			rst.close();
			rst=null;
			
			ps.close();
			ps=null;
			
			con.close();
			con=null;
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		return Variables;
	}
   
	/**
	 *  consultaReporteHUmeda es el metodo encargado de consultar en la base de datos los valores  registrados
	 *  con respecto a las mediciones que los modulos zigbee han enviado y han sido insertados en la base de datos. 
	 * @param codigo el primer parametro que definie que cultivo seleccionar
	 * @param fecha  indica la fecha en el que se realizo   la insercion de los valores.
	 * @return Reporte  es un vector con la informacion qeu se consulto.
	 */

	public ArrayList ConsultaReporteHumeda (int codigo, String fechaini, String fechafin, String horaini, String horafin){
		ArrayList  Reporte= new ArrayList();
		PreparedStatement ps;
		ResultSet rst;
		boolean rta=false;
		try{
			conexion = new Conexion();
			Connection con = conexion.conectar("cantidadFertilizante");
				
			//medicion_variables.idregvar, registro_zigbee.nomzigbee, medicion_variables.varhum, medicion_variables.fechamedicion, medicion_variables.HoraRegistro
			//medicion_variables.maczigbee in (select registro_zigbee.maczigbee from registro_zigbee where codcult= "+codigo+") " + "AND
			 ps = con.prepareStatement("SELECT medicion_variables.idregvar, registro_zigbee.nomzigbee, registro_zigbee.tipo, medicion_variables.varhum, medicion_variables.fechamedicion, medicion_variables.HoraRegistro " + 
				 "FROM registro_zigbee, medicion_variables " + 
				 
				 "WHERE registro_zigbee.maczigbee=medicion_variables.maczigbee " +
				 "AND medicion_variables.fechamedicion >= '"+fechaini+"' AND medicion_variables.fechamedicion <= '"+fechafin+"' " +
				 "AND medicion_variables.HoraRegistro >= '"+horaini+"' AND medicion_variables.HoraRegistro <= '"+horafin+"' " +				 
				 "ORDER  BY  medicion_variables.idregvar;");

				rst = ps.executeQuery();
				
				while (rst.next()){
			     
					MedicionVariables reportehumeda = new MedicionVariables();
									
					reportehumeda.setNomzigbee(rst.getString(2));
					reportehumeda.setTipo(rst.getString(3));
					reportehumeda.setVarhum(rst.getInt(4));
					reportehumeda.setFechamedicion(rst.getDate(5));
					reportehumeda.setHoraRegistro(rst.getTime(6));
					
					
					Reporte.add(reportehumeda);
				} 
				
				ps.close();
				ps=null;
				
				con.close();
				con=null;
			} catch (Exception e) {
				e.printStackTrace();
				rta=false;
			}
			return Reporte;			
		}
	public ArrayList ConsultaReporteRiego (int codigo, String fechaini, String fechafin, String horaini, String horafin){
		ArrayList  Reporte= new ArrayList();
		PreparedStatement ps;
		ResultSet rst;
		boolean rta=false;
		try{
			conexion = new Conexion();
			Connection con = conexion.conectar("cantidadFertilizante");
			 
			ps = con.prepareStatement("SELECT aplicacion_riego.id, registro_zigbee.nomzigbee, aplicacion_riego.estado, aplicacion_riego.fecha, aplicacion_riego.hora " +
				"FROM registro_zigbee, aplicacion_riego " +
				"WHERE aplicacion_riego.maczigbee in (select registro_zigbee.maczigbee from registro_zigbee where codcult= "+codigo+" AND tipo = 'riego') " +
				"AND aplicacion_riego.fecha >= '"+fechaini+"' AND aplicacion_riego.fecha <= '"+fechafin+"' " +
				"AND aplicacion_riego.hora >= '"+horaini+"' AND aplicacion_riego.hora <= '"+horafin+"' " +
				"AND  registro_zigbee.maczigbee=aplicacion_riego.maczigbee " +
				"ORDER  BY  aplicacion_riego.id;");

				rst = ps.executeQuery();
				
				while (rst.next()){
			     
					MedicionVariables reportehumeda = new MedicionVariables();
									
					reportehumeda.setNomzigbee(rst.getString(2));
					reportehumeda.setVarhum(rst.getInt(3));
					reportehumeda.setFechamedicion(rst.getDate(4));
					reportehumeda.setHoraRegistro(rst.getTime(5));
					
					
					Reporte.add(reportehumeda);
				} 
				
				ps.close();
				ps=null;
				
				con.close();
				con=null;
			} catch (Exception e) {
				e.printStackTrace();
				rta=false;
			}
			return Reporte;			
		}
	
	}
   	
	
	

