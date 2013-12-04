package co.edu.Systemteleco.ClasesTablas;

import java.sql.Connection;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import co.edu.Systemteleco.RegistroUsuario.Usuario;
import co.edu.Systemteleco.conexion.Conexion;
/**
 * 
 * @author adrian
 *
 */
public class Cultivo {
	private  int codcult;
	private String nomcult;
	private int denspoblacion;
	private  int docus;
	private Date fechacult;
	private int areacult;
	private int idtiposiembra;
	
	private int idetapa;
	private String nometapa ;
	private int limhumedad;
	private int duretapa;
	
private Usuario usuario;	
private Conexion conexion;
	
	public Cultivo() {
		this.codcult=0;
		this.nomcult="";
		this.denspoblacion=0;
		this.areacult=0;
		this.docus=0;
		this.idtiposiembra=0;
		
        this.usuario=new Usuario();
        
        this.idetapa=0;
        this.nometapa="";
        this.limhumedad=0;
        this.duretapa=0;		
	}
		
	public Conexion getConexion() {
		return conexion;
	}
	public void setConexion(Conexion conexion) {
		this.conexion = conexion;
	}
	
	public int getCodcult() {
		return codcult;
	}

	public void setCodcult(int codcult) {
		this.codcult = codcult;
	}

	public String getNomcult() {
		return nomcult;
	}

	public void setNomcult(String nomcult) {
		this.nomcult = nomcult;
	}

	public int getDenspoblacion() {
		return denspoblacion;
	}

	public void setDenspoblacion(int denspoblacion) {
		this.denspoblacion = denspoblacion;
	}

	public int getDocus() {
		return docus;
	}

	public void setDocus(int docus) {
		this.docus = docus;
	}

	public Date getFechacult() {
		return fechacult;
	}

	public void setFechacult(Date fechacult) {
		this.fechacult = fechacult;
	}

	public int getAreacult() {
		return areacult;
	}

	public void setAreacult(int areacult) {
		this.areacult = areacult;
	}

	public int getIdtiposiembra() {
		return idtiposiembra;
	}

	public void setIdtiposiembra(int idtiposiembra) {
		this.idtiposiembra = idtiposiembra;
	}
	/**/
    public void setIdetapa(int idetapa)
    {
    	this.idetapa = idetapa;
    }
    public int getIdetapa()
    {
    	return idetapa;
    }
    public void setNometapa(String nometapa)
    {
    	this.nometapa = nometapa;
    }
    public String getNometapa()
    {
    	return nometapa;
    }
    public void setLimhumedad(int limhumedad)
    {
    	this.limhumedad = limhumedad;
    }
    public int getLimhumedad()
    {
    	return limhumedad;
    }
    public void setDuretapa(int duretapa)
    {
    	this.duretapa = duretapa;
    }
    public int getDuretapa()
    {
    	return duretapa;
    }
    /**/
	
@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + codcult;
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
		Cultivo other = (Cultivo) obj;
		if (codcult != other.codcult)
			return false;
		return true;
	}
/**
 * codcults es un metodo que esta encargado de seleccionar 
 * todos los campos de la tabla cultivo  y es usado por varias paginas 
 * 
 * @return: devuelve un vector con la informacion de la tabla  cultivo  que se  llama 
 * Cultivos.
 */
	public ArrayList codcults(){
		ArrayList Cultivos = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("codcults");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM cultivo ");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				Cultivo cultiv = new Cultivo();
				cultiv.setCodcult(rst.getInt(1));
				cultiv.setNomcult(rst.getString(2));
				cultiv.setDenspoblacion(rst.getInt(3));
				cultiv.setFechacult(rst.getDate(4));
				cultiv.setAreacult(rst.getInt(5));
				cultiv.setDocus(rst.getInt(6));
				cultiv.setIdtiposiembra(rst.getInt(7));				
				
				Cultivos.add(cultiv);// pregunta no deberia indicar la posicion en la que se debe añadir el nuevo dato
			}                        //rta posible: por que al no tener definido la poscion por defecto va en la primera creeo			
			
			rst.close();
			rst=null;
			
			ps.close();
			ps=null;
			
			con.close();
			con=null;			
			
		} catch (Exception e) {
			e.printStackTrace();
		}				
		return Cultivos;
	}

	
@Override
public String toString() {
	return "Cultivo [areacult=" + areacult + ", denspoblacion=" + denspoblacion
			+ ", docus=" + docus + ", fechacult=" + fechacult
			+ ", idtiposiembra=" + idtiposiembra + ", nomcult=" + nomcult + "]";
}

/**
 *este es el segundo metodo de la clase cultivo que se encargara de registrar los datos de la pagina
 *capturadatoscultivo he insertarlos en los campos corresondientes de la tabla cultivo.
 * @return rta: es unavariable de tipo booleando que se creeo  para confirmar si la consulta fue realizada o no 
 */

public boolean guardar(String nomcult,int denspoblacion,int areacult,int idtiposiembra,String fechacult,int docus){
	PreparedStatement ps;
	boolean rta = false;
	try {
		conexion = new Conexion();
		Connection con = conexion.conectar("cantidadFertilizante"); 
		ps = con.prepareStatement("INSERT INTO cultivo (nomcult, denspoblacion, fechacult, areacult, docus, idtiposiembra ) " +
				            "VALUES ('"+nomcult +"',"+denspoblacion +",'"+fechacult+"',"+areacult+","+docus+","+idtiposiembra+")");
		
		rta = ps.execute();
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return rta;
}
  
		
/**
 * eliminar es el metodo que se encarga de tomar la informacion de un cultivo y eliminarla de la tabla 		
 * @param codigocultivo: este parametro es requisito indispensable para saber cual cultivo en especifico debe ser eliminado 
 * @return rta: es la respuesta que devuelve a la pagina de tipo booleano para confirmar o no si la sentencia se ejecuto o no.
 */
		public boolean eliminar(int codigocultivo ){
			PreparedStatement ps;
			boolean rta=false;
			try {
				conexion = new Conexion();
				Connection con = conexion.conectar("modificar"); 
				ps = con.prepareStatement("delete from cultivo  where codcult=?");
				ps.setInt(1,codigocultivo);
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
  	
	/**
	 * buscarcultivo es un metodo creeado por la necesidad de tomar los datos de un cultivo en especial
	 * 
	 * @param codcultivo: es el valor que se toma de refrencia para identiicar el cultivo en la tabla 
	 */

		public void buscarcultivo( int codcultivo){
			
			ArrayList Cultivos = new ArrayList();	
			
				try {
					conexion = new Conexion();
					Connection con = conexion.conectar("cultivoamodificar"); 
			        PreparedStatement ps;	
			        ResultSet rst;	
			        
			ps = con.prepareStatement(" select * from cultivo   where codcult =? ");
			     ps.setInt(1, codcultivo)	;// asigno el parametro para que realice la consulta
			
			     rst = ps.executeQuery();
				
					while(rst.next()){
							
							this.setCodcult(rst.getInt(1));
							this.setNomcult(rst.getString(2));
							this.setDenspoblacion(rst.getInt(3));
							this.setFechacult(rst.getDate(4));
							this.setAreacult(rst.getInt(5));
							this.setDocus(rst.getInt(6));
							this.setIdtiposiembra(rst.getInt(7));							
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
		 * este metodo se  encarga de realizar cualquier modificacion o correcion de la informacion correspondiente al cultivo.
		 * @param codigocultivo:identifica el cultivo en la tabla.
		 * @param nombreucult: es uno de los campos que s epuede modificar.
		 * @param denspoblacion1:es uno de los cmapos que se puede modificar 
		 * @param areacult: es uno de los campos que se puede modificar.
		 * @return rta: una variable de tipo booleano que confirma si la sentencia se ejecuto correctamente o si existieron exepciones.
		 */
  public boolean actualizarcultivo( int codigocultivo, String nombreucult, int  denspoblacion, int areacult, int idtiposiembra, String fechainicultivo)
  {		
		PreparedStatement ps;
		boolean rta=false;
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("actualizarcultivo"); 
			ps = con.prepareStatement("update cultivo set nomcult='"+nombreucult+"', denspoblacion="+denspoblacion+", fechacult='"+fechainicultivo+"', areacult="+areacult+", idtiposiembra="+idtiposiembra+" where codcult="+codigocultivo+"");
			
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
    *SRtipodesiembra es un metodo creeado por la necesidad de  convertir el codigo de idtiposiembra 
	*y mostrar su nombre correspondiente 		
   * @param idtiposiembra: es la llave principal de la tabla tipo_siembra y se usa para identifacar el nombre del tipo de siembra
   * 
   * @return resultado: devuelve el nombre del tipo del tipo de siembra  que se escojio
   */
 
  public String  SRtipodesiembra ( int idtiposiembra ){
		PreparedStatement ps;
		ResultSet rst;
		String resultado="";
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("Modificar"); 
			ps = con.prepareStatement("select nomsiembra from tipo_siembra where idtiposiembra=? ");
			
			ps.setInt(1,idtiposiembra);
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
  
/**
 * SRnombrecultivo  es un metodo creeado por la necesidad de convertir el codigo del cultivo y mostrar el nomvre asignado 
 * @param codigocultivo = paramettro que identifica el cultivo  
 * @return devuelve un vector con la informacion de la tabla  cultivo  que se  llama 
 * Cultivos.
 */
  public String  SRnombrecultivo ( int codigocultivo ){
		PreparedStatement ps;
		ResultSet rst;
		String resultado="";
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("listadomodulozigbee"); 
			ps = con.prepareStatement("SELECT nomcult from cultivo  where codcult=?");
			
			ps.setInt(1,codigocultivo);
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

 /**/
  public boolean registraretapa(int codcult,String nometapa,int limhumedad,int duretapa){
		PreparedStatement ps;
		boolean rta = false;
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("registraretapas"); 
			ps = con.prepareStatement("INSERT INTO etapa_crecimiento (codcult,nometapa,limhum,duracion)" +
					            "VALUES ("+codcult+",'"+nometapa +"',"+limhumedad+","+duretapa+")");
			rta = ps.execute();
			
			ps.close();
			ps=null;
			
			con.close();
			con=null;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rta;
	}
  
  public boolean actualizaretapa(int idetapa,int codcult,String nometapa,int limhumedad,int duretapa){
		PreparedStatement ps;
		boolean rta = false;
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("actualizaretapas"); 
			ps = con.prepareStatement("update etapa_crecimiento set nometapa='"+nometapa+"',limhum="+limhumedad+",duracion="+duretapa+" where idetapa="+idetapa+" and codcult="+codcult+"");
			rta = ps.execute();
			
			ps.close();
			ps=null;
			
			con.close();
			con=null;
			
			System.out.println("update etapa_crecimiento set nometapa='"+nometapa+"',limhum="+limhumedad+",duracion="+duretapa+" where idetapa="+idetapa+" and codcult="+codcult);
		
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return rta;
	}
  
  public boolean eliminaretapa(int idetapa,int codcult){
		PreparedStatement ps;
		boolean rta=false;
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("eliminaretapa"); 
			ps = con.prepareStatement("delete from etapa_crecimiento where idetapa="+idetapa+" and codcult="+codcult+"");
			rta = ps.execute();

			ps.close();
			ps=null;
			
			con.close();
			con=null;
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return rta;
	}
  
  public ArrayList cultivoetapa(){
		ArrayList Etapas = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("consultaretapas");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("select fechacult,nomcult,nometapa,limhum,duracion, etapa_crecimiento.codcult,idetapa from etapa_crecimiento,cultivo where etapa_crecimiento.codcult=cultivo.codcult");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				Cultivo etapa = new Cultivo();
				etapa.setFechacult(rst.getDate(1));
				etapa.setNomcult(rst.getString(2));
				etapa.setNometapa(rst.getString(3));
				etapa.setLimhumedad(rst.getInt(4));
				etapa.setDuretapa(rst.getInt(5));				
				etapa.setCodcult(rst.getInt(6));
				etapa.setIdetapa(rst.getInt(7));
				
				Etapas.add(etapa);
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
  
 
  
  public void consultaretapa(int idetapa,int codcult){
		
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("consultaretapa"); 
		    PreparedStatement ps;	
		    ResultSet rst;	
		        
		    ps = con.prepareStatement("select nomcult,denspoblacion,areacult,idtiposiembra,fechacult,nometapa,limhum,duracion from etapa_crecimiento,cultivo where etapa_crecimiento.codcult=cultivo.codcult and idetapa="+idetapa+" and etapa_crecimiento.codcult="+codcult+"");
		     rst = ps.executeQuery();
			
				while(rst.next()){
						
						this.setNomcult(rst.getString(1));
						this.setDenspoblacion(rst.getInt(2));
						this.setAreacult(rst.getInt(3));
						this.setIdtiposiembra(rst.getInt(4));
						this.setFechacult(rst.getDate(5));
						this.setNometapa(rst.getString(6));
						this.setLimhumedad(rst.getInt(7));
						this.setDuretapa(rst.getInt(8));				
						//this.setCodcult(rst.getInt(9));
						//this.setIdetapa(rst.getInt(10));
													
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
}

