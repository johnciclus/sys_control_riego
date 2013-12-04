package co.edu.Systemteleco.RegistroUsuario;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties; 
import javax.mail.*;
import javax.mail.internet.*;

import java.util.*;
import java.io.*;

import co.edu.Systemteleco.ClasesTablas.Cultivo;
import co.edu.Systemteleco.ClasesTablas.TipoDocumento;
import co.edu.Systemteleco.conexion.*;
	//se agrega a los campos de la clase que son accesados únicamente desde dentro de la clase, o sea,
	//dentro de sus propios métodos
public class Usuario {
	private int idtipoDocumento;
	private int numeroDocumento;
	private String password;
	private String login;
	private String nombre;
	private String apellido;
	private String direccion;
	private int telefono;
	private String email;
	
	private Conexion conexion;
	
	
	//se agrega a los campos de la clase que pueden ser accesados fuera de la clase. En general, deben ser
    //públicos los métodos de la clase,para que puedan ser accesador por otro metodos de otras clases 
	// este Usuario es el constructor de esta clase y no tiene  lista de parametros solo el cuerpo
	public Usuario() { 
		this.idtipoDocumento=0;
		this.numeroDocumento=0;
		this.password="";
		this.login="";
		this.nombre="";
		this.apellido="";
		this.direccion="";
		this.telefono=0;
		this.email="";

	}
	public int getIdtipoDocumento() {
		return idtipoDocumento;
	}
	public void setIdtipoDocumento(int tipoDocumento) {
		this.idtipoDocumento = tipoDocumento;
	}
	public int getNumeroDocumento() {
		return numeroDocumento;
	}
	public void setNumeroDocumento(int numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
		result = prime * result + numeroDocumento;
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
		Usuario other = (Usuario) obj;
		if (numeroDocumento != other.numeroDocumento)
			return false;
		return true;
	}




	@Override
	
	public String toString() {		
		return this.nombre + " " + this.apellido + " " + this.direccion + " " + this.telefono + " " + this.email;
	}
	/** 
	*/
/**
 	* este es el primer metodo de la clase usuario que  se llama guardar y es para almacenar a los usuarios que se registran
 * en el sistema
 * @return rta: una variable de tipo booleano que confirma si la sentencia se ejecuto correctamente o si existieron exepciones.
 */
	public boolean guardar(int tipodocumento, String pasword, String login, String nombre, String apellido, String direccion, int telefono, String email, int numerodocumento)
	{
		PreparedStatement ps;
		boolean rta=false;
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idtipodocs");
			
			ps = con.prepareStatement("insert into usuario ( docus, idtipodoc, password, login, nomus, apeus, direus, teleus, emailus )"+
													"values ("+numerodocumento+","+tipodocumento+",'"+pasword+"','"+login+"','"+nombre+"','"+apellido+"','"+direccion+"',"+telefono+",'"+email+"')");	
			
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
 	* el segundo metodo de la clase usuario se llama verificar usuario 
 * y como su nombre lo indica se encarga de verificar que el usuario este en la base de datos creeo
 * @param login : parametro del metodo que se va comparar en la base de datos.
 * @param password parametro del metodo que se va comparar en la base de datos.
 * @return rta: una variable de tipo booleano que confirma si la sentencia se ejecuto correctamente o si existieron exepciones.
 
 */
	public boolean verificarUsuario(String login, String password){
		boolean rta=false;
		PreparedStatement ps;
		ResultSet rst;
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("idtipodocs");
			
			ps = con.prepareStatement(
					"SELECT * FROM usuario " +"WHERE login = ? " +"AND password = ? ");
			
			ps.setString(1, login);
			ps.setString(2, password);
			
			rst = ps.executeQuery();
			
			if (rst.next()){
				this.idtipoDocumento = rst.getInt(2);// esta posiciones deben ir como en la base de datos.
				this.numeroDocumento = rst.getInt(1);
				this.apellido = rst.getString(6);
				this.nombre = rst.getString(5);
				// aqui esta la compracion del campo que metio el usuario y la base de datos
				this.login = rst.getString(4);
				this.password = rst.getString(3);
			//
				this.direccion = rst.getString(7);
				this.telefono = rst.getInt(8);
				this.email = rst.getString(9);
				
				rta=true;
			} else rta=false;
			
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
	 * slecciona toda la informacion que ahy en la tabla usuario y la almacena en un vector para su uso posterios.
	 * @return datosusuario: es un vector con la infromacion consultada de todos los usuarios
	 */
	public ArrayList DatosUsuario(){
		ArrayList datosusuario = new ArrayList();
						
		try {
			conexion = new Conexion();
			Connection con = conexion.conectar("codcults");
			
			PreparedStatement ps;
			ResultSet rst;
			
			ps = con.prepareStatement("SELECT * FROM usuario");
			
			rst = ps.executeQuery();
			
			while(rst.next()){
				Usuario usuario = new Usuario();
				 
				 usuario.setNumeroDocumento(rst.getInt(1));
				 usuario.setIdtipoDocumento(rst.getInt(2));
				 usuario.setPassword(rst.getString(3));
				 usuario.setLogin(rst.getString(4));
				 usuario.setNombre(rst.getString(5));
				 usuario.setApellido(rst.getString(6));
				 usuario.setDireccion(rst.getString(7));
				 usuario.setTelefono(rst.getInt(8));
				 usuario.setEmail(rst.getString(9));
							
				datosusuario.add(usuario);// pregunta no deberia indicar la posicion en la que se debe añadir el nuevo dato
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
		
		return datosusuario;
	}
	/**
	 * ste metodo se  encarga de realizar cualquier modificacion o correcion de la informacion correspondiente al Usuario.
	 * @param tipodocumento es uno de los caMpos que se puede modificar y actualizar.
	 * @param password es uno de los caMpos que se puede modificar y actualizar.
	 * @param login es uno de los caMpos que se puede modificar y actualizar.
	 * @param nombre es uno de los caMpos que se puede modificar y actualizar.
	 * @param apellido es uno de los caMpos que se puede modificar y actualizar.
	 * @param direccion es uno de los caMpos que se puede modificar y actualizar.
	 * @param email es uno de los caMpos que se puede modificar y actualizar.
	 * @param numedocumento es el parametro que idintifica a cual usuario ahy que realizar  la actualizacion
	 * @param telefono es uno de los caMpos que se puede modificar y actualizar.
	 * @return  rta: una variable de tipo booleano que confirma si la sentencia se ejecuto correctamente o si existieron exepciones.
		 
	 */
	public boolean actualizarUsuario(int tipodocumento, String pasword, String login, String nombre, String apellido, String direccion, int telefono, String email, int numerodocumento, int moddocusu)
	{		
			PreparedStatement ps;
			boolean rta=false;
			try {
				conexion = new Conexion();
				Connection con = conexion.conectar("actualizarcultivo"); 
				ps = con.prepareStatement("update usuario set docus="+numerodocumento+", idtipodoc="+tipodocumento+", password='"+pasword+"', login='"+login+"', nomus='"+nombre+"', apeus='"+apellido+"', direus='"+direccion+"', teleus="+telefono+", emailus='"+email+"' WHERE docus="+moddocusu+"");
				
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
  	public ArrayList RecuperarContraseña(String pass){
			ArrayList datosusuario = new ArrayList();
							
			try {
				conexion = new Conexion();
				Connection con = conexion.conectar("codcults");
				
				PreparedStatement ps;
				ResultSet rst;
				
				ps = con.prepareStatement("SELECT * FROM usuario WHERE emailus=?");
				ps.setString(1, pass);
				rst = ps.executeQuery();
				
				while(rst.next()){
					Usuario usuario = new Usuario();
					 
					 usuario.setNumeroDocumento(rst.getInt(1));
					 usuario.setIdtipoDocumento(rst.getInt(2));
					 usuario.setPassword(rst.getString(3));
					 usuario.setLogin(rst.getString(4));
					 usuario.setNombre(rst.getString(5));
					 usuario.setApellido(rst.getString(6));
					 usuario.setDireccion(rst.getString(7));
					 usuario.setTelefono(rst.getInt(8));
					 usuario.setEmail(rst.getString(9));
					datosusuario.add(usuario);// pregunta no deberia indicar la posicion en la que se debe añadir el nuevo dato
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
			
			return datosusuario;
		}
	public void Enviarcorreo(String correo, String Password ,String user){
			String emaildestinatario = correo;
			String contraseñaUsuario =Password;
			String usuario= user;
			 try
		        {
			Properties props = new Properties();
			// Nombre del host de correo, es smtp.gmail.com
			props.setProperty("mail.smtp.host", "smtp.live.com");

			// TLS si está disponible
			props.setProperty("mail.smtp.starttls.enable", "true");

			// Puerto de gmail para envio de correos
			props.setProperty("mail.smtp.port","25");

			// Nombre del usuario
			props.setProperty("mail.smtp.user", "tecnoagroambientalusta@hotmail.com");

			// Si requiere o no usuario y password para conectarse.
			props.setProperty("mail.smtp.auth", "true");
			
			Session session = Session.getDefaultInstance(props);
			session.setDebug(true);
			MimeMessage message = new MimeMessage(session);
			// Quien envia el correo
			message.setFrom(new InternetAddress("tecnoagroambientalusta@hotmail.com"));

			// A quien va dirigido
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(emaildestinatario));
			message.setSubject("Recordar PASSWORD");
			message.setText( "querido usuario del sistema de monitoreo  de variables agroambientales me permito recordarle quelos datos de su cuenta para ingresar son "+ 
					"login:"+ usuario+ " y contraseña:"+contraseñaUsuario);
			Transport t = session.getTransport("smtp");
			//t.connect("tecnoagroambientalusta@hotmail.com","admin2011");
			t.sendMessage(message,message.getAllRecipients());
			t.close();
			
			
		} catch (Exception e)
		{
		    e.printStackTrace();
		} 
		 }
}