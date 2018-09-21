<%@page import="java.sql.PreparedStatement"%>
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
   PreparedStatement pst=null;
   
  String id=request.getParameter("fid");
  int fid=Integer.parseInt(id);
  //session.setAttribute("search", search1);
    
//    y=  at.executeQuery("Delete * from decryptfile where id='"+fid+"'" ) ;
        pst = conn.prepareStatement("delete from decryptfile where id = ?");
        pst.setInt(1,fid);
        pst.executeUpdate();
        pst = conn.prepareStatement("delete from encryptfile where id = ?");
        pst.setInt(1,fid);
        pst.executeUpdate();
   out.println(fid);
       
 
        response.sendRedirect("Myfiles.jsp");
      
     
   }  
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
%>   