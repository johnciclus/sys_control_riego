package co.edu.Systemteleco.ClasesTablas;

import giovynet.serial.Baud;
import giovynet.serial.Com;
import giovynet.serial.Parameters;

class Runthread {
	  public static void main(String args[]) {
	    System.out.println("Main thread starting.");
	    ListenerRead mt = new ListenerRead();
	    Thread newThrd = new Thread(mt);
	    newThrd.start();
	    do {
	      try {
	    	  System.out.println("data es diferente de cero ");
	        Thread.sleep(250);
	      } catch (InterruptedException exc) {
	        System.out.println("Main thread interrupted.");
	      }
	    } while (mt.data3== 0x30);
	   
	  }
	  
	}