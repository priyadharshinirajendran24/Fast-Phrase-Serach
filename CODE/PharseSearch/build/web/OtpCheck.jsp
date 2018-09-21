<%@page import="sms.SMS"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

   
<%   
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phrase","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
   
   String otp=request.getParameter("otp"); 
 //  String pass=request.getParameter("pass");
   
   
  
       String query="select * from otp where otp1='"+otp+"'";
       y=at.executeQuery(query);
       
  if(y.next())
       {
           
           response.sendRedirect("OwnerHome.jsp");
           
         
           
       }
  else
        {
            response.sendRedirect("index.html");
         }
          
   }
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
%>

    