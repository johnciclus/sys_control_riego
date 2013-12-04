package co.edu.Systemteleco.ClasesTablas;

import giovynet.nativelink.SerialPort;
import giovynet.serial.Baud;
import giovynet.serial.Com;
import giovynet.serial.Parameters;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class App {
	public static void main(String[] args){
		try {
			SerialPort serialPort = new SerialPort();
			List<String> portsFree;
			portsFree = serialPort.getFreeSerialPort();
			/**** If there are free ports, use the first found. ****/
                        if (portsFree!=null&&portsFree.size()>0) {
				for (String free : portsFree) {
					System.out.println("Free port: "+free);
				}
				/****Open the port.****/
                                Parameters parameters = new Parameters();
				parameters.setPort("COM3");
				parameters.setBaudRate(Baud._9600);
				parameters.setMinDelayWrite(100);
				System.out.println("Open port: "+portsFree.get(0));
				Com com = new Com(parameters);
                                /****Send data.****/
		        char[] data = {'1','A','2','B'};
		        com.sendArrayChar(data);
		        System.out.println(data);
		        com.close();
			
				/****Close the port.****/
				System.out.println("\n<End Send Data>");
				com.close();
			}else {
				System.out.println("No Free ports!!!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}


	
}
