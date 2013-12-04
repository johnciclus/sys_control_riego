package co.edu.Systemteleco.ClasesTablas;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import co.edu.Systemteleco.conexion.*;
//se agrega a los campos de la clase que son accesados únicamente desde dentro de la clase, o sea,
//dentro de sus propios métodos
public class CalculoFertilizante {
	private int idcontrol;
	private int idfertil;
	private int cantidadfertilizante;
	private int codcult;
	private Date fechafertil;
	private int idetapa;
	private Conexion conexion;
	
	
	//se agrega a los campos de la clase que pueden ser accesados fuera de la clase. En general, deben ser
    //públicos los métodos de la clase,para que puedan ser accesador por otro metodos de otras clases 
	// este Usuario es el constructor de esta clase y no tiene  lista de parametros solo el cuerpo
	public CalculoFertilizante() { 
		this.idcontrol=0;
		this.idfertil=0;
		this.cantidadfertilizante=0;
		this.codcult=0;
		this.idetapa=0;

	}
	
	
	public Conexion getConexion() {
		return conexion;
	}


	public void setConexion(Conexion conexion) {
		this.conexion = conexion;
	}
	
	public int getIdcontrol() {
		return idcontrol;
	}

	public void setIdcontrol(int idcontrol) {
		this.idcontrol = idcontrol;
	}

	public int getIdfertil() {
		return idfertil;
	}


	public void setIdfertil(int idfertil) {
		this.idfertil = idfertil;
	}


	public int getCantidadfertilizante() {
		return cantidadfertilizante;
	}


	public void setCantidadfertilizante(int cantidadfertilizante) {
		this.cantidadfertilizante = cantidadfertilizante;
	}


	public int getCodcult() {
		return codcult;
	}


	public void setCodcult(int codcult) {
		this.codcult = codcult;
	}


	public Date getFechafertil() {
		return fechafertil;
	}


	public void setFechafertil(Date fechafertil) {
		this.fechafertil = fechafertil;
	}


	public int getIdetapa() {
		return idetapa;
	}


	public void setIdetapa(int idetapa) {
		this.idetapa = idetapa;
	}


	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idcontrol;
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
		CalculoFertilizante other = (CalculoFertilizante) obj;
		if (idcontrol != other.idcontrol)
			return false;
		return true;
	}


		@Override
	public String toString() {
		return "CalculoFertilizante [cantidadfertilizante="
				+ cantidadfertilizante + ", codcult=" + codcult
				+ ", fechafertil=" + fechafertil + ", idetapa=" + idetapa
				+ ", idfertil=" + idfertil + "]";
	}

/**
 * Consultaabonoto es un metodo selecciona toda la informacion en la tabla calculo_fertilizante
 * @return controlabono que es un vector con la informacion consultada en la tabla de la base de datos.
 */
		public ArrayList consultabono(){
			ArrayList controlabono = new ArrayList();
							
			try {
				conexion = new Conexion();
				Connection con = conexion.conectar("consultarhistoial");
				
				PreparedStatement ps;
				ResultSet rst;
				
				ps = con.prepareStatement("SELECT * FROM calculo_fertilizante ");
				
				rst = ps.executeQuery();
				
				while(rst.next()){
					CalculoFertilizante control = new CalculoFertilizante();
					control.setIdcontrol(rst.getInt(1));
					control.setCantidadfertilizante(rst.getInt(2));
					control.setFechafertil(rst.getDate(3));
					control.setIdfertil(rst.getInt(4));
					control.setCodcult(rst.getInt(5));
					control.setIdetapa(rst.getInt(6));
				
					controlabono.add(control);
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
			
			return controlabono;
		}

		/**
		 * guardarcontrolabono recibe los datos que son eviados desde la pagina de  GuardarControAbono.jsp  
		 * con  los cuales accesa a la base de datos he inserta la informacion en loas campos 
		 * correspondientes  del la tabla calculo fertilizante que es donde se lleva 
		 * el control del abono que se le ha a plicado a los cultivos 
		 *
		 * @return es  la variable rta que es de tipo boolean  que confirma con 1 si  la insercion fue corracta o 
		 * cero si fue fallida.
		 */
	
	public boolean guardarcontrolabono(){
		PreparedStatement ps;
		boolean rta=false;
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idfertils");

			ps = con.prepareStatement(
					"INSERT INTO calculo_Fertilizante (idcontrol,cantidadfertilizante,fechafertil," +
					"idfertil, codcult, idetapa )"+
					" VALUES (?,?,?,?,?,?) " );
			
			ps.setInt(1, this.idcontrol);
			ps.setInt(2, this.cantidadfertilizante);
			ps.setDate(3, this.fechafertil);
			ps.setInt(4, this.idfertil);
			ps.setInt(5, this.codcult);
			ps.setInt(6, this.idetapa);
			
			
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
	
	

	/**consultarcantidad de fertilizates es un metodo que  nececita de 4 argumentos iniciales   que osn enviados
	 * de la pagina RShistorialFertilizantes.jsp y son :
	 * @param fechadesde:es el la fecha desde donde enpieza amostrar la informacion
	 * @param fechahasta: es la fecha donde termina el rango de informacion que va amostrar 
	 * @param codigo: que especifica el cultivo que sera seleccionado 		
	 * @param idfertil: que especifica el fertilizante que fue aplicado en el rango de fechas  seleccionado anteriormente.
	 * @return historialMonitoreo que es un  vector que contiene los  resultados de la consulta mysql que se realizo en el metodo y es entregado en 
	 * la pagina de RShistorialFertilizantes.jsp
	 */
	public ArrayList consultarcantidadFertilizante(String fechadesde, String fechahasta ,int codigo ,int  idfertil ){
		ArrayList  historialMonitoreo= new ArrayList();
		PreparedStatement ps;
		ResultSet rst;
		boolean rta=false;
		
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("cantidadFertilizante");
			
			 ps = con.prepareStatement("SELECT * FROM calculo_fertilizante " +"WHERE (fechafertil between ?  AND  ? ) and codcult = ? and idfertil = ?");
			
			 			
			Date fecha= new Date (22);
			fecha=fecha.valueOf(fechadesde) ;
			
			Date fecha2= new Date (22); 
			fecha2=fecha2.valueOf(fechahasta) ;
			
			
			ps.setDate(1, fecha);
			ps.setDate(2, fecha2);
			ps.setInt(3, codigo);
			ps.setInt(4,idfertil);
			
			rst = ps.executeQuery();
			
			while (rst.next()){
		     
				CalculoFertilizante fertilizante = new CalculoFertilizante();
			
				fertilizante.setIdcontrol(rst.getInt(1));
				fertilizante.setCantidadfertilizante(rst.getInt(2));
				fertilizante.setFechafertil(rst.getDate(3));
				fertilizante.setIdfertil(rst.getInt(4));
				fertilizante.setCodcult(rst.getInt(5));
				fertilizante.setIdetapa(rst.getInt(6));
				
				historialMonitoreo.add(fertilizante);
			} 
				
			
			ps.close();
			ps=null;
			
			con.close();
			con=null;
		} catch (Exception e) {
			e.printStackTrace();
			rta=false;
		}
		return historialMonitoreo;  					
	}
	
/** SRetapafertil es un metodo creeado para convertir   la llave principal de  la tabla 
 * etapa_creciemiento  que se muestra en el campo de la tabla de lapagina  RSHistorialFertilizantes.jsp  "Etapa de Abono" por el nombre 
 * correspondiente  al cual pertenece  la llave.
 * @param etap: es un argumento  o la llave que identifica una etapa de crecimiento en la cual la plata se encunetra
 * 
 * @return resultado : es el nombre que recibe la llave selecionada para ser mostrada al usuario.
 */
	public String  SRetapafertil ( int etapa ){
		PreparedStatement ps;
		ResultSet rst;
		String resultado="";
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("actualizarcultivo"); 
			ps = con.prepareStatement("select nometapa from etapa_crecimiento where idetapa=? ");
			ps.setInt(1,etapa);
			rst = ps.executeQuery();
			if (rst.next()){
				resultado=((rst.getString(1)));
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
			return resultado;
		}
	
	
	/** SRnombrefertilizante es un metodo creeado para convertir   la llave principal de  la tabla 
	 * tipo_fertilizante que se muestra en el campo de la tabla de lapagina  RSHistorialFertilizantes.jsp  "Nombre Fertilizante" por el nombre 
	 * correspondiente  al cual pertenece  la llave.
	 * @param nomfertilizante: es un argumento  o la llave que identifica  al fertilizante 
	 * @return resultado : es el nombre que recibe la llave selecionada para ser mostrada al usuario.
	 */
	public String  SRnombrefertilizante ( int nomfertilizante ){
		PreparedStatement ps;
		ResultSet rst;
		String resultado="";
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("actualizarcultivo"); 
			ps = con.prepareStatement("select nomfertil from tipo_fertilizante where idfertil=? ");
			ps.setInt(1,nomfertilizante);
			rst = ps.executeQuery();
			if (rst.next()){
				resultado=((rst.getString(1)));
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
			return resultado;
		}
	
	/** SRnombrecultivo  es un metodo creeado para convertir   la llave principal de  la tabla 
	 *cultivo  que se muestra en el campo de la tabla de lapagina  RSHistorialFertilizantes.jsp  "Nombre Del Cultivo" por el nombre 
	 * correspondiente  al cual pertenece  la llave.
	 * @param nomcultivo: es un argumento  o la llave que identifica  al Cultivo.
	 * @return resultado : es el nombre que recibe la llave selecionada para ser mostrada al usuario.
	 */
	public String  SRnombrecultivo ( int nomcultivo ){
		PreparedStatement ps;
		ResultSet rst;
		String resultado="";
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("actualizarcultivo"); 
			ps = con.prepareStatement("select nomcult from cultivo where codcult=? ");
			ps.setInt(1,nomcultivo);
			rst = ps.executeQuery();
			if (rst.next()){
				resultado=((rst.getString(1)));
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
			return resultado;
		}

	
	
}	
	

