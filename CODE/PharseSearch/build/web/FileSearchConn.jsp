<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%   
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phrase","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y;
   
  String search1=request.getParameter("search");
  //session.setAttribute("search", search1);
    
       String query="select * from decryptfile where key1='"+search1+"' OR key2='"+search1+"' OR key3='"+search1+"' "  ;
       y=at.executeQuery(query);
       
  while(y.next())
       {   
         session.setAttribute("searchw",search1);
        response.sendRedirect("ViewFile.jsp");
       }
     
   }  
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
%>   