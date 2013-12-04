package co.edu.Systemteleco.ClasesTablas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import co.edu.Systemteleco.conexion.Conexion;
public class TipoFertilizantes {
	private int idfertil;
	private String nomfertil;
	private String elementosmayores;
	private String elementosmenores;
	 
    private Conexion conexion;
	
	public TipoFertilizantes() {
		
		this. idfertil=0;
		this. nomfertil="";	
		this. elementosmayores="";
		this. elementosmenores="";
	}

	
		public int getIdfertil() {
		return idfertil;
	}



	public void setIdfertil(int idfertil) {
		this.idfertil = idfertil;
	}



	public String getNomfertil() {
		return nomfertil;
	}



	public void setNomfertil(String nomfertil) {
		this.nomfertil = nomfertil;
	}



	public String getElementosmayores() {
		return elementosmayores;
	}



	public void setElementosmayores(String elementosmayores) {
		this.elementosmayores = elementosmayores;
	}



	public String getElementosmenores() {
		return elementosmenores;
	}



	public void setElementosmenores(String elementosmenores) {
		this.elementosmenores = elementosmenores;
	}



	public Conexion getConexion() {
		return conexion;
	}


	public void setConexion(Conexion conexion) {
		this.conexion = conexion;
	}

/**
 * buscarfertilizante es un metodo de seleccion un cultivo especifico en la base de datos  segun sea el paramtreo  que se le pase a este metodo 	
 * @param codcultivo :  es el que indica que cultivo tiene que seleccionar en la tabbla cultivo 
 */
	public void buscarFertilizante( int codcultivo ){
		
		
			try {
				conexion = new Conexion();
				Connection con = conexion.conectar("cultivoamodificar"); 
		        PreparedStatement ps;	
		        ResultSet rst;	
		        
		ps = con.prepareStatement(" select * from cultivo   where codcult =? ");
		     ps.setInt(1, codcultivo)	;// asigno el parametro para que realice la consulta
		
		     rst = ps.executeQuery();
			
				while(rst.next()){
				
					this.setIdfertil(rst.getInt(1));
					this.setNomfertil(rst.getString(2));
					this.setElementosmayores(rst.getString(3));
					this.setElementosmenores(rst.getString(4));
				
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
 * el metodo idfertil realiza una consulta en la tabla de tipo fertilizante de la cual extrae todos los campos 
 * de la tabla y los alamcena en una variable de tipo vector.
 * este metodo es consultado por mas de una pagina en el sistema   
 * @return Fertilizante: que es un  veztor que contiene la informacion que se realizo en la consulta mysql.
 */
	public ArrayList idfertils(){
		ArrayList Fertilizante = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idfertils");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM tipo_fertilizante ");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				TipoFertilizantes tipofertil = new TipoFertilizantes();
				
				tipofertil.setIdfertil(rst.getInt(1));
				tipofertil.setNomfertil(rst.getString(2));
				tipofertil.setElementosmayores(rst.getString(3));
			    tipofertil.setElementosmenores(rst.getString(4));
				
			    Fertilizante.add(tipofertil);
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
		
		return Fertilizante;
	}


@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + idfertil;
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
	TipoFertilizantes other = (TipoFertilizantes) obj;
	if (idfertil != other.idfertil)
		return false;
	return true;
}


@Override
public String toString() {
	return "TipoFertilizantes [elementosmayores=" + elementosmayores
			+ ", elementosmenores=" + elementosmenores + ", nomfertil="
			+ nomfertil + "]";
}

/**
 * se encargara de registrar los datos de la registrofertilizantes he insertarlos en los campos corresondientes de la tabla tipo_fertilizante.
 * @return n rta: es la respuesta que devuelve a la pagina de tipo booleano para confirmar o no si la sentencia se ejecuto o no.
 */
public boolean guardar(){
	PreparedStatement ps;
	boolean rta=false;
	try {
		conexion = new Conexion();
		Connection con = conexion.conectar("idfertils"); 
		ps = con.prepareStatement(
				"INSERT INTO tipo_fertilizante (idfertil, nomfertil, elementosmayores, "+
				"elementosmenores ) " +
				"VALUES (?,?,?,?) ");
		
		ps.setInt(1, this.idfertil);
		ps.setString(2, this.nomfertil);
		ps.setString(3, this.elementosmayores);
		ps.setString(4, this.elementosmenores);
				
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
 * este metodo se  encarga de realizar cualquier modificacion o correcion de la informacion correspondiente al tipo de fertilizante.
 * @param idfertilizante indica que fertilizante seleccionar de la tabla
 * @param nombrefertil  es uno de los campos que s epuede modificar.
 * @param Emayores  es uno de los campos que s epuede modificar.
 * @param Emenores  es uno de los campos que s epuede modificar.
 * @return rta: una variable de tipo booleano que confirma si la sentencia se ejecuto correctamente o si existieron exepciones.
 */

public boolean actualizarFertilizante(  int idfertilizante,  String nombrefertil, String Emayores, String Emenores){
	PreparedStatement ps;
	boolean rta=false;
	try {
		conexion = new Conexion();
		Connection con = conexion.conectar("actualizarcultivo"); 
		ps = con.prepareStatement("update tipo_fertilizante set nomfertil=?, elementosmayores=?,elementosmenores=?"+" where idfertil=?");
		
		ps.setString(1,nombrefertil);
		ps.setString(2,  Emayores);
		ps.setString(3, Emenores);
		ps.setInt(4, idfertilizante);
	
		
		
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
 *  elimina  de la base de datos   el fertilizante seleccionado
 * @param idfertil : idica que fertilizante es el que debe ser eliminado 
 * @return  rta: una variable de tipo booleano que confirma si la sentencia se ejecuto correctamente o si existieron exepciones.
 */

public boolean eliminarfertil(int idfertil ){
	PreparedStatement ps;
	boolean rta=false;
	try {
		conexion = new Conexion();
		Connection con = conexion.conectar("modificar"); 
		ps = con.prepareStatement("delete from tipo_fertilizante  where idfertil=?");
		ps.setInt(1,idfertil);
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


