<%@page import="sms.SMS"%>
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
 int val=1; 
String num,filename; 

   
st.executeUpdate("update request1 set valcount='"+val+"' where id='"+fid+"'");
//out.println("hai");
 y=st.executeQuery("select * from request1 where id='"+fid+"' ");

    if(y.next())
    { 
      num=y.getString("phno");
      filename=y.getString("fname");

            k=st.executeQuery("select * from decryptfile where fname='"+filename+"'");
            if(k.next())
           {  
               String key=k.getString("deckey");
               out.println(key);
               SMS sms=new SMS();
               sms.SendSMS(num, "Your Decrypt key for file " + filename +" is "+key);
               response.sendRedirect("OwnerHome.jsp");
           }
            
     }
// }


 }  
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
%>   