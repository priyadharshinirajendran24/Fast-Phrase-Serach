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
   ResultSet y,k;
  //PreparedStatement ps;
   
 String aa=request.getParameter("fid"); 
 int fid=Integer.parseInt(aa);
 int val=0;  

   // y=st.executeQuery("update request1 set valcount='"+val+"' WHERE id='"+fid+"'");
// 
//    String sqlEDIT="update request1 set valcount =? where id = ?";
//    java.sql.PreparedStatement ps=conn.prepareStatement(sqlEDIT);
//    ps.setInt(2, val);
//    ps.setInt(0, fid);
//    ps.executeUpdate();
//    int i=ps.executeUpdate();
//    if(i>0)
//        {
//            response.sendRedirect("index.html");
//        }
//     

st.executeUpdate("update request1 set valcount='"+val+"' where id='"+fid+"'");
response.sendRedirect("Approval.jsp");

 }  
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
%>   