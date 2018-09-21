<%@page import="java.sql.Blob"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%   
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phrase","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet rs;
   
   Blob image = null;
    byte[] imgData = null;

    String name=session.getAttribute("username").toString();
    
     String query="select * from ownregimg where uname='"+name+"'  ";
       rs=at.executeQuery(query);
       if (rs.next()) 
       {
           
           image = rs.getBlob(12);
imgData = image.getBytes(1, (int) image.length());
response.setContentType("image/gif");
OutputStream o = response.getOutputStream();
o.write(imgData);
o.flush();
o.close();
       // imgData = rs.getBytes("img");
       //  String encode = Base64.getEncoder().encodeToString(imgData);
           // request.setAttribute("imgBase", encode);

      
          
           }
}
            catch(Exception ex)
{
       System.out.printf("Hai",ex.getMessage());
}
            %>
