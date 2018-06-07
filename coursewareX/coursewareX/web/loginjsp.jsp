<%-- 
    Document   : login2
    Created on : Oct 6, 2014, 3:13:42 PM
    Author     : Neerav1
--%>

//<%@page import="com.coursewareX.dbconn"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>




<%
    //dbconn conn = new dbconn();
    String ut=request.getParameter("usertype");
    String un=request.getParameter("username");
    String ps=request.getParameter("password");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/e_courseware?zeroDateTimeBehavior=convertToNull","root",null);
    Statement stmt = conn.createStatement();
    String authenticate="Select * from login where u_type='"+ut+"' and u_name='"+un+"' and password='"+ps+"'";
    
    ResultSet rs = stmt.executeQuery(authenticate);
//     int i = con.exeu(authenticate_user);
//    if(i>0)
//    {
//        request.sendRedirect("home.jsp?msg=tjsfd");
//    }
//    else
//    {
//              response.sendRedirect("home.jsp?msg=tjsfd");
//    }        else

    
        if(rs.next())
        { 
            String active = "insert into active_login (user_id) values('"+un+"')";
            int a = stmt.executeUpdate(active);
            
            session.setAttribute("user",un);
            session.setAttribute("type", ut);
            if(ut.equals("a"))
            {
            response.sendRedirect("adminpanel.jsp");
            }
            else
            {
            response.sendRedirect("mainhome.jsp");
            }
        
           //RequestDispatcher rd = request.getRequestDispatcher("dummy.jsp");
           //rd.forward(request, response);
        }
        else
        {
         //RequestDispatcher rd = request.getRequestDispatcher("mainhome.jsp");
           //rd.forward(request, response);
             response.sendRedirect("login.jsp");
        }
    }
    catch(Exception  e)
    {
      e.printStackTrace();
      
    }
    
%>

      