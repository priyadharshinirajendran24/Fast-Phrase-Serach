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
   
   String mail=request.getParameter("mail"); 
   String pass=request.getParameter("pass");
   
   
  
       String query="select * from userregimg where mail='"+mail+"' and pass='"+pass+"' ";
       y=at.executeQuery(query);
       
  if(y.next())
       {
           
          
           String name=y.getString("uname");
           
           //String phno=y.getString("phno");
           //Random rand = new Random();
           //int n = rand.nextInt(90000) + 10000;
          // SMS ni=new SMS();
          // ni.SendSMS(phno, " Your OTP is"+n);
           session.setAttribute("Email",mail);
         //  session.setAttribute("otp",n);
          session.setAttribute("username",name);
           
        //  String m="select * from otp where uname='"+name+"' ";
         // j=at.executeQuery(m);
          // if(j.next())
          // {
          //     st.executeUpdate("update otp set otp1='"+n+"' where uname='"+name+"'");
          // }
           //else
           //{
           //    st.executeUpdate("insert into otp values('"+name+"','"+n+"')");
           //}
           
           
            response.sendRedirect("UserHome.jsp");
           
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

    