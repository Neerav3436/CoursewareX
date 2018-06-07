<%-- 
    Document   : Download
    Created on : 27 Mar, 2015, 11:08:03 PM
    Author     : Jay Patel
--%>

<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%
    String path  = request.getParameter("path");
    String filenm  = request.getParameter("fnm");
int BUFSIZE = 4096;
String filePath;
{
 
//filePath = getServletContext().getRealPath("") + File.separator + "a.txt";
filePath = path;
//System.out.println("kanhiii"+filePath);
File file = new File(filePath+"/"+filenm);
int length   = 0;
ServletOutputStream outStream = response.getOutputStream();
response.setContentType("text/html");
response.setContentLength((int)file.length());
String fileName = filenm;
response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
 
byte[] byteBuffer = new byte[BUFSIZE];
DataInputStream in = new DataInputStream(new FileInputStream(file));
 
while ((in != null) && ((length = in.read(byteBuffer)) != -1))
{
outStream.write(byteBuffer,0,length);
}
 
in.close(); 
outStream.close();
}
    
    
    
/*
   // you  can get your base and parent from the database
   String base="e1";
   String parent="e2";   
   String filename=parent+"_codemiles.zip";
// you can  write http://localhost
   String filepath="http://www.codemiles.com/example/"+base+"/";

BufferedInputStream buf=null;
   ServletOutputStream myOut=null;

try{

myOut = response.getOutputStream( );
     File myfile = new File("F:\\file3.docx");
     
     
     //set response headers
     response.setContentType("text/plain");
     
     response.addHeader(
        "Content-Disposition","attachment; filename="+filename );

     response.setContentLength( (int) myfile.length( ) );
     
     FileInputStream input = new FileInputStream(myfile);
     buf = new BufferedInputStream(input);
     int readBytes = 0;

     //read from the file; write to the ServletOutputStream
     while((readBytes = buf.read( )) != -1)
       myOut.write(readBytes);

} catch (IOException ioe){
     
        throw new ServletException(ioe.getMessage( ));
         
     } finally {
         
     //close the input/output streams
         if (myOut != null)
             myOut.close( );
          if (buf != null)
          buf.close( );
         
     }
     * 
     */ 
%>
    </body>
</html>
