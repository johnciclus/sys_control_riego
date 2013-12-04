
import giovynet.nativelink.SerialPort;
import giovynet.serial.Baud;
import giovynet.serial.Com;
import giovynet.serial.Parameters;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class App1 {   
    public static void main(String[] args)throws Exception{
        // looks for free serial ports
        SerialPort free = new SerialPort();
        List<String> portList = free.getFreeSerialPort();
        for (String string : portList) {
            System.out.println(string);
        }       
        // Settings parameters COM1.
        Parameters settings = new Parameters();
        settings.setPort("COM1");
        settings.setBaudRate(Baud._9600);
        //Instance COM1.
        Com com1 = new Com(settings);
        
        // Settings parameters COM·.
        settings.setPort("COM2");
        settings.setMinDelayWrite(100);
        settings.setBaudRate(Baud._9600);
        //Instance COM3.
        Com com2 = new Com(settings);
        //Write COM1.
        char[] data = {0x7E,0x7D ,'3','4','5'};
        for(int i =0; i<5; i++){
        	com1.sendArrayChar(data);	
        	 System.out.println(data);
        }
        
        com1.close();
        int data1 = com2.receiveSingleChar();
      
        while(data1 != 0x0 ){
        for (int i = 0; i < 4; i++) { 
            Thread.sleep(400); 
            System.out.print(com2.receiveSingleChar()); 
        } 
        }
        //Read COM3
        /*
        for (int i = 0; i < 4; i++) {
            System.out.println("<<Receive "+com2.receiveSingleDataInt());           
        }*/
    }   
}
