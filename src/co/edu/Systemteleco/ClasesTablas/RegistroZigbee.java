package co.edu.Systemteleco.ClasesTablas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;


import co.edu.Systemteleco.conexion.*;
//se agrega a los campos de la clase que son accesados únicamente desde dentro de la clase, o sea,
//dentro de sus propios métodos
public class RegistroZigbee {
	private String  maczigbee;
	private String nomzigbee;
	private Date fechavar;
	private Time hora;
	private int varhum;
	private int codcult;
	private Conexion conexion;
	
	
	//
	public RegistroZigbee() { 
		this.maczigbee="";
		this.nomzigbee="";
		this.codcult=0;
		this.fechavar=new Date ();	
	}
	
	public String getMaczigbee() {
		return maczigbee;
	}

	public void setMaczigbee(String maczigbee) {
		this.maczigbee = maczigbee;
	}

	public String getNomzigbee() {
		return nomzigbee;
	}

	public void setNomzigbee(String nomzigbee) {
		this.nomzigbee = nomzigbee;
	}

	public Date getFechavar() {
		return fechavar;
	}

	public void setFechavar(Date fechavar) {
		this.fechavar = fechavar;
	}

	public Time getHora() {
		return hora;
	}

	public void setHora(Time hora) {
		this.hora = hora;
	}

	public int getVarhum() {
		return varhum;
	}

	public void setVarhum(int varhum) {
		this.varhum = varhum;
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
		result = prime * result
				+ ((maczigbee == null) ? 0 : maczigbee.hashCode());
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
		RegistroZigbee other = (RegistroZigbee) obj;
		if (maczigbee == null) {
			if (other.maczigbee != null)
				return false;
		} else if (!maczigbee.equals(other.maczigbee))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "RegistroZigbee [maczigbee=" + maczigbee + ", nomzigbee="
				+ nomzigbee + "]";
	}


/**
 * MacZigbee es el primer metode de la clase registro Zigbee se encarga de selecciona toda la informacion almacenada 
 * en la tabla de resgistro_zigbee en la base de datos  
 * @return Modulos es un vector con la informacion de los modulos registrados
 */

	
	public ArrayList MacZigbee(){
		ArrayList Modulos = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("ListadoModuloZigbee");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM  registro_zigbee ");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				RegistroZigbee MZB = new RegistroZigbee();
				MZB.setMaczigbee(rst.getString(1));
				MZB.setNomzigbee(rst.getString(2));
				MZB.setFechavar(rst.getDate(3));
				MZB.setHora(rst.getTime(4));
				MZB.setCodcult(rst.getInt(5));
				
				
				Modulos.add(MZB);
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
		
		return Modulos;
	}
	/**
	 *este es el segundo metodo de la clase Registro Zigbee que se encargara de registrar los datos de la pagina
	 *registrozigbee he insertarlos en los campos corresondientes de la tabla registrozigbee.
	 * @return rta: es unavariable de tipo booleando que se creeo  para confirmar si la consulta fue realizada  con exito o fallida. 
	 */	
	
	public boolean guardar(String maczigbee,String nomzigbee,int codcult){
		PreparedStatement ps;
		boolean rta=false;
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("maczigbees"); 
			ps = con.prepareStatement("INSERT INTO registro_zigbee (maczigbee, nomzigbee,fechavar , hora, codcult ) " +
					                                       "VALUES ('"+maczigbee+"','"+nomzigbee+"',curdate(),current_time(),"+codcult+")");
			
			ps.execute();
			rta=true;
			ps.close();
			ps=null;
			
			con.close();
			con=null;
		} catch (Exception e) {
			e.printStackTrace();
			rta=false;
		}
		
		return rta;
	}

	/**
	 * buscarmoduloZigbee este metodo realiza una busqueda en la base de datos y selecciona el modulozigbee que concuerde con los 
	 * argumeto que el metodo exige
	 * @param maczigbee es a maz del modulo que desea obtener informacion
	 */
	
	public void buscarModuloZigbee( String maczigbee ){
		
		ArrayList Cultivos = new ArrayList();	
		
			try {
				conexion = new Conexion();
				Connection con = conexion.conectar("ModuloZigbeeAmodificar"); 
		        PreparedStatement ps;	
		        ResultSet rst;	
		        
		ps = con.prepareStatement(" select * from registro_zigbee where maczigbee=? ");
		     ps.setString(1, maczigbee)	;// asigno el parametro para que realice la consulta
		
		     rst = ps.executeQuery();
			
				while(rst.next()){
						
						this.setMaczigbee(rst.getString(1));
						this.setFechavar(rst.getDate(3));
						this.setHora(rst.getTime(4));
						this.setNomzigbee(rst.getString(2));
						this.setCodcult(rst.getInt(5));
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
				
				
			}

	/**
	 * este metodo se  encarga de realizar cualquier modificacion o correcion de la informacion correspondiente al Registrod del Modulo Zigbee.
	 * @param maczigbee:  seleccion el modulo zigbee en la base de datos 
	 * @param cultivo: es uno de los campos que se puede modificar.
	 * @param nombre: es uno de los campos que se puede modificar.
	 * @return rta: una variable de tipo booleano que confirma si la sentencia se ejecuto correctamente o si existieron exepciones.
	 */
	
	public boolean actualizarModuloZigbee(String modmaczigbee,  String maczigbee ,int cultivo, String nombre){
			PreparedStatement ps;
			boolean rta=false;
			try {
				conexion = new Conexion();
				Connection con = conexion.conectar("actualizarcultivo"); 
				ps = con.prepareStatement("update registro_zigbee set maczigbee='"+maczigbee+"',nomzigbee='"+nombre+"',codcult="+cultivo+" where maczigbee='"+modmaczigbee+"'");
				
				ps.execute();
				rta=true;
				ps.close();
				ps=null;
				
				con.close();
				con=null;
			} catch (Exception e) {
				e.printStackTrace();
				rta=false;
			}
			
			return rta;
	 }
	 public boolean eliminar(String maczigbe ){
			PreparedStatement ps;
			boolean rta=false;
			try {
				conexion = new Conexion();
				Connection con = conexion.conectar("modificar"); 
				ps = con.prepareStatement("delete from registro_zigbee where maczigbee=?");
				ps.setString(1,maczigbe);
				ps.execute();
				rta=true;
				ps.close();
				ps=null;
				
				con.close();
				con=null;
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return rta;
		}				

}