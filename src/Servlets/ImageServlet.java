package Servlets;

import java.awt.image.*;
import java.io.*;
import java.awt.*;
import java.util.Date;
import javax.imageio.*;
import javax.servlet.*;
import javax.servlet.http.*;
import co.edu.Systemteleco.ClasesTablas.cReporteHumeda;
	/**
	 	* Servlet implementation class imageservlet
	 */
	public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int codigocultivo;    
    String fechamedicion;
	/**
	* @see HttpServlet#HttpServlet()
	*/
    public ImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void processRequest (HttpServletRequest request ,HttpServletResponse response)
    throws ServletException, IOException{
    	HttpSession httpsession=request.getSession(true);
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	HttpSession httpsession = request.getSession(true);
	processRequest(request, response);
	response.setContentType("image/jpg");
	ServletOutputStream servletoutputstream = response.getOutputStream();
	try{
	BufferedImage img;
	cReporteHumeda objv = new cReporteHumeda();
	img= objv.generabarrasanula(codigocultivo,fechamedicion);
	ImageIO.write(img, "jpg", response.getOutputStream());
	} catch(IOException ioexecption){}
servletoutputstream.flush();
servletoutputstream.close();
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		codigocultivo= (int) Integer.parseInt(request.getParameter("codcult"));
		fechamedicion = (String)request.getParameter("fechahumeda");
		if(codigocultivo==0)codigocultivo=0;
		processRequest(request, response);
		response.setContentType("text/html");
        PrintWriter printwriter = response.getWriter();
        
        printwriter.print("<html><head><title>GRAFICO</title>");
        printwriter.print("<style type='text/css'>");
        printwriter.print(".Estilo4 {font-size: 10px; font-weight: bold; }");
        printwriter.print(".Estilo9 {font-style: italic; font-size: 10px;}");
        printwriter.print("</style>");
        
        printwriter.print("</head>");
        printwriter.print("<body>");
        printwriter.print("<table width='366' border='0' align='center' cellpadding='0' cellspacing='0' style='font-family:Arial, Helvetica, sans-serif;font-size:11px'>");
        printwriter.print("<tr>");
        printwriter.print("<td width='80' rowspan='3'><IMG src='ImageServlet'></td>");
        printwriter.print("</tr>");
        printwriter.print("</table>");
        printwriter.print("<br>");
        printwriter.print("<div align='center'><a href='javascript:history.back();'>Regresar</a></div>");
        printwriter.print("</body>");
        printwriter.print("</html>");
        
        printwriter.flush();
        printwriter.close();
         
		
	        
	    }
}
