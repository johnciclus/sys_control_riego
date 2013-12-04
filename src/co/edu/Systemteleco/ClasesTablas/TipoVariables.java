package co.edu.Systemteleco.ClasesTablas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import co.edu.Systemteleco.conexion.Conexion;
public class TipoVariables {
	
	private int idtipovar;
	private String nomvar;
	private String unidadmed;
	
private Conexion conexion;
	
	public TipoVariables() {
		
		this. idtipovar=0;
		this. nomvar="";
		this. unidadmed="";
				
		
		
	}
	public Conexion getConexion() {
		return conexion;
	}
	
	public void setConexion(Conexion conexion) {
		this.conexion = conexion;
	}
	
	
	
public int getIdtipovar() {
		return idtipovar;
	}
	public void setIdtipovar(int idtipovar) {
		this.idtipovar = idtipovar;
	}
	public String getNomvar() {
		return nomvar;
	}
	public void setNomvar(String nomvar) {
		this.nomvar = nomvar;
	}
	public String getUnidadmed() {
		return unidadmed;
	}
	public void setUnidadmed(String unidadmed) {
		this.unidadmed = unidadmed;
	}
/**  idtipovars es el primer metodo de la clase TipoVariables y esta encragado de 
 * seleccionar la informacion de la tabla tipos_variables
 */
	public ArrayList idtipovars(){
		ArrayList Variables = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idtipovars");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM tipo_variables ");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				TipoVariables tipovar = new TipoVariables();
				tipovar.setIdtipovar(rst.getInt(1));
				tipovar.setNomvar(rst.getString(2));
				tipovar.setUnidadmed(rst.getString(3));
				
				Variables.add(tipovar);
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
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + idtipovar;
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
	TipoVariables other = (TipoVariables) obj;
	if (idtipovar != other.idtipovar)
		return false;
	return true;
}
	
	
}
