

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
        
       
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
<%
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
    

    try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull","root",null);
    Statement st=conn.createStatement();
    String sql="insert into student_register(f_name,l_name,gender,dob,image,email,mob,address,city,state,u_name,password,s_ques,s_ans) values('"+nfn+"','"+nln+"','"+ngen+"','"+ndob+"','"+nimg+"','"+nem+"','"+nmn+"','"+nad+"','"+nct+"','"+nst+"','"+nun+"','"+npwd+"','"+nsq+"','"+nsa+"')";    
    int i=st.executeUpdate(sql);
    if(i>0){
        response.sendRedirect("sturegjsp.jsp?msg=sucessfull");
    }
    else
    {
        response.sendRedirect("sturegjsp.jsp?msg=Faliure");
    }
    }
    
    catch(Exception e)
    {
        e.printStackTrace();
   
    }
    %>
  
    