<%-- 
    Document   : Down1
    Created on : Sep 19, 2018, 11:10:59 AM
    Author     : Priya
--%>


<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Download Page</title>
    </head>
    <body>
     <% 
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phrase","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet R,M;
   int result=0;
    
   String a=session.getAttribute("filename").toString();
   String b=session.getAttribute("decrypt").toString();
           //out.print(a);
           //out.print(b);
           String k="select * from decryptfile where fname='"+a+"' and deckey='"+b+"' ";
           M=at.executeQuery(k);
           while(M.next())
              {
                 response.sendRedirect("GetFile.jsp");
              }
           
}
catch(Exception ex)
{
System.out.println("Error message"+ex.getMessage());
}
                 
%>
    </body>
</html>
