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
   ResultSet R,M;
   int result=0;
   
             String id=request.getParameter("fid");
             int fid=Integer.parseInt(id);
             String deckey=request.getParameter("deckey");
            
             
             R=st.executeQuery("select * from request1 where id='"+fid+"'");
             if(R.next())
             {
                
                 String filename=R.getString("fname");
                 session.setAttribute("filename", filename);
                session.setAttribute("decrypt", deckey);
               response.sendRedirect("Down1.jsp");
             } 
             
           
           
}
catch(Exception ex)
{
System.out.println("Error message"+ex.getMessage());
}
                 
                 %>