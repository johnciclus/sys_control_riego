package co.edu.Systemteleco.ClasesTablas;
import java.util.ArrayList;
import java.util.List;
import java.lang.*;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;
import giovynet.nativelink.SerialPort;
import giovynet.serial.ActionListenerReadPort;
import giovynet.serial.Baud;
import giovynet.serial.Buffer;
import giovynet.serial.Com;
import giovynet.serial.Parameters;

public class ListenerRead implements Runnable {
	private Com com3;
	int data;
	char data1 ;
	 public String data2;
	int	data3;
	int data4;
	String data5;
	String data6;
	public ListenerRead(){
				// Constructor no siempre necesari	     
		}
public void run() {
	try {
	Parameters settings = new Parameters();
    settings.setPort("COM2");
    settings.setBaudRate(Baud._9600);
    //Instance COM3.
    com3= new Com(settings);

		Thread.sleep(200);
		System.out.println("COMIENZA");
		
		while(true ){
	//
			//0x00,0x13,0xA2,0x00,0x40,0x6B,0xF8,0x18		
			
			Thread.sleep(400);
			
			while (com3.readDataInt("COM2")!= 126);
			//  data= com3.readDataInt("COM3");// recibe a= 0x7E= 78=
			String data6= com3.receiveToString(21);// recibe a= 0x7E= 78=
			/*
			 * int data= com3.readDataInt("COM3");// recibe a= 0x7E= 78=
			char  data1 = com3.readPortLikeCharC("COM3");// recibe a= 0x7E= 78=
			String data2= com3.readPortC("COM3");// recibe a= 0x7E= 78=
			int	data3=com3.receiveSingleDataInt();// recibe a= 0x7E= 78=
			int data4=com3.receiveSingleChar();// recibe a= 0x7E= 78=
			String data5= com3.receiveSingleString();// recibe a= 0x7E= 78=
			String data6= com3.receiveToString(0);// recibe a= 0x7E= 78=
			com3.receiveToStringBuilder(2, dato8);// recibe a= 0x7E= 78=
			*/
			if(data6 != null){	
				if(data6.toCharArray()[2]== 0x92){
					//int out1 = Integer.parseInt(MAC,16);
					//String macnumero = String.valueOf(MAC);
				char[] MAC=data6.substring(3,11).toCharArray();
						StringBuffer cadena = new StringBuffer();
					for (int x=0;x<MAC.length;x++){
				 cadena =cadena.append(Integer.valueOf(MAC[x]));
				 data2=cadena.toString();
				
				 
					}
					
					System.out.println(cadena);
				}
			}
		}
	
	}	
    catch (Exception e) {
			e.printStackTrace();
	}
}
public static void main(String args[]) {
    System.out.println("Main thread starting.");
    ListenerRead mt = new ListenerRead();
    Thread newThrd = new Thread(mt);
    newThrd.start();
}


}

	

		


					
		
	
	
	
	
	