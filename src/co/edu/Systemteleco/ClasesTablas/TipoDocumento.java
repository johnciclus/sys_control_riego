package co.edu.Systemteleco.ClasesTablas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import co.edu.Systemteleco.conexion.Conexion;

public class TipoDocumento {
	
	private int idtipodoc;
	private String nomdoc;

private Conexion conexion;
	
//metodo constructor

	public TipoDocumento() {
		this.idtipodoc=0;
		this.nomdoc="";
		
	}


	public int getIdtipodoc() {
		return idtipodoc;
	}


	public void setIdtipodoc(int idtipodoc) {
		this.idtipodoc = idtipodoc;
	}


	public String getNomdoc() {
		return nomdoc;
	}


	public void setNomdoc(String nomdoc) {
		this.nomdoc = nomdoc;
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
		result = prime * result + idtipodoc;
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
		TipoDocumento other = (TipoDocumento) obj;
		if (idtipodoc != other.idtipodoc)
			return false;
		return true;
	}

	
	/**
	 *  Idtipodocs se encarga de seleccion toda la informacion de la tabla  tipo documento 
	 * @return Documento que contiene todo la nformacion consultada en la  base de datos.
	 */
	
	public ArrayList idtipodocs(){
		ArrayList Documentos = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idtipodocs");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM tipo_documento ");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				TipoDocumento tipodoc = new TipoDocumento();
				tipodoc.setIdtipodoc(rst.getInt(1));
				tipodoc.setNomdoc(rst.getString(2));
				
				Documentos.add(tipodoc);
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
		
		return Documentos;
	}
	
}
	
	
