/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.coursewareX;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Neerav1
 */
@MultipartConfig
public class register extends HttpServlet {

    String filepath="";
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    
   
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
String nfn=request.getParameter("fn");
    String nln=request.getParameter("ln");
    String ngen=request.getParameter("gen");
    String ndob=request.getParameter("dob");
    String nimg=request.getParameter("img");
    String nem=request.getParameter("em");
    String nmn=request.getParameter("mn");
    String nad=request.getParameter("ad");
      String nct=request.getParameter("ct");
    String nst=request.getParameter("st");
 String nun=request.getParameter("un");
    String npwd=request.getParameter("pwd");
    String nsq=request.getParameter("sq");
    String nsa=request.getParameter("sa");
    
    connect con = new connect();
    
   final String path = request.getParameter("destination");
         String filename ="",subject="",type="";
         filename = request.getParameter("filename");
         subject = request.getParameter("subject");
         type = request.getParameter("type");
         
         
    final Part filePart = request.getPart("file");
    final String fileName = getFileName(filePart);

    OutputStream out = null;
    InputStream filecontent = null;
    final PrintWriter writer = response.getWriter();

    try {
        out = new FileOutputStream(new File(path + File.separator
                + fileName));
        filecontent = filePart.getInputStream();

        int read = 0;
        final byte[] bytes = new byte[1024];

        while ((read = filecontent.read(bytes)) != -1) {
            out.write(bytes, 0, read);
        }
        writer.println("New file " + fileName + " created at " + path);
        String sql="insert into student_register(f_name,l_name,gender,dob,image,email,mob,address,city,state,u_name,password,s_ques,s_ans) values('"+nfn+"','"+nln+"','"+ngen+"','"+ndob+"','"+filepath+"','"+nem+"','"+nmn+"','"+nad+"','"+nct+"','"+nst+"','"+nun+"','"+npwd+"','"+nsq+"','"+nsa+"')";    
    int i=con.insrt(sql);
    if(i>0){
        response.sendRedirect("login.jsp?msg=sucessfull");
    }
    else
    {
        response.sendRedirect("stureg.jsp?msg=Faliure");
    }
    } catch (FileNotFoundException fne) {
        writer.println("You either did not specify a file to upload or are "
                + "trying to upload a file to a protected or nonexistent "
                + "location.");
        writer.println("<br/> ERROR: " + fne.getMessage());
        

        
    } finally {
        if (out != null) {
            out.close();
        }
        if (filecontent != null) {
            filecontent.close();
        }
        if (writer != null) {
            writer.close();
        }
    }
    
    
    

  
   
    }
    
    private String getFileName(final Part part) {
    final String partHeader = part.getHeader("content-disposition");
    
    for (String content : part.getHeader("content-disposition").split(";")) {
        if (content.trim().startsWith("filename")) {
            return content.substring(
                    content.indexOf('=') + 1).trim().replace("\"", "");
        }
    }
    return null;
}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}








































































































































































































































 