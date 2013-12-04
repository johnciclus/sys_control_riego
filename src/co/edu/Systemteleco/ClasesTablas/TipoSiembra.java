package co.edu.Systemteleco.ClasesTablas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import co.edu.Systemteleco.conexion.Conexion;
public class TipoSiembra {
	
	private int idtiposiembra;
	private String nomsiembra;
	
	
private Conexion conexion;
	
	public TipoSiembra() {
		
		this. idtiposiembra=0;
		this. nomsiembra="";
		
	
	
	}
	public Conexion getConexion() {
		return conexion;
	}
	
	public void setConexion(Conexion conexion) {
		this.conexion = conexion;
	}
	
	
public int getIdtiposiembra() {
		return idtiposiembra;
	}
	public void setIdtiposiembra(int idtiposiembra) {
		this.idtiposiembra = idtiposiembra;
	}
	public String getNomsiembra() {
		return nomsiembra;
	}
	public void setNomsiembra(String nomsiembra) {
		this.nomsiembra = nomsiembra;
	}
/**  tipoVatiables es el primer metodo de la clase TipoVariables y esta encragado de 
 de guardar los datos del id
 */
	public ArrayList idtiposiembras(){
		ArrayList Siembras = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idtiposiembras");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM tipo_siembra ");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				TipoSiembra tiposiem = new TipoSiembra();
				tiposiem.setIdtiposiembra(rst.getInt(1));
				tiposiem.setNomsiembra(rst.getString(2));
				
				
				Siembras.add(tiposiem);
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
		
		return Siembras;
	}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + idtiposiembra;
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
	TipoSiembra other = (TipoSiembra) obj;
	if (idtiposiembra != other.idtiposiembra)
		return false;
	return true;
}

	
	
}
