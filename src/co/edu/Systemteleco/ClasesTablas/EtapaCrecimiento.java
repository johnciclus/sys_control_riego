package co.edu.Systemteleco.ClasesTablas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import co.edu.Systemteleco.conexion.Conexion;

public class EtapaCrecimiento {
	private int idetapa;
	private String nometapa;

private Conexion conexion;
	
	public EtapaCrecimiento() {
		this.idetapa=0;
		this.nometapa="";
		
	}
		
	public Conexion getConexion() {
		return conexion;
	}
	public void setConexion(Conexion conexion) {
		this.conexion = conexion;
	}

		public int getIdetapa() {
		return idetapa;
	}

	public void setIdetapa(int idetapa) {
		this.idetapa = idetapa;
	}

	public String getNometapa() {
		return nometapa;
	}

	public void setNometapa(String nometapa) {
		this.nometapa = nometapa;
	}

/**
 * idetapas el primer metodo de la clase etapa Crecimiento esta encargado se seleccionar todos 
 * los  campos de esta tabla.
 * @return Etapas es un vector con toda la informacion alamacenada en la tabla de etapa_crecimiento
 */
	public ArrayList idetapas(){
		ArrayList Etapas = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idetapas");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM etapa_crecimiento ");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				EtapaCrecimiento etapacrec = new EtapaCrecimiento();
				etapacrec.setIdetapa(rst.getInt(1));
				etapacrec.setNometapa(rst.getString(2));
				
				Etapas.add(etapacrec);
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
		
		return Etapas;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idetapa;
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
		EtapaCrecimiento other = (EtapaCrecimiento) obj;
		if (idetapa != other.idetapa)
			return false;
		return true;
	}

	
	
	
}
	
	
