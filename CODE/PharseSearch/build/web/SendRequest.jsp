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
   
   String user=session.getAttribute("username").toString();
   String i=session.getAttribute("aa").toString();
   String j=session.getAttribute("bb").toString();
  String name="";
  String mail="";
  String phno="";

       int count=0;
      // out.print(i);
      // out.print(j);
      // out.print(count);
        String qra="select * from userregimg where uname='"+user+"'";
        y=at.executeQuery(qra);
       
        while(y.next())
        {
             name=y.getString("uname");
             mail=y.getString("mail");
             phno=y.getString("phno");
        out.print(name);
        out.print(mail);
        
      int p=st.executeUpdate("insert into request1(ownername,valcount,fname,uname,mail,phno) values('"+i+"','"+count+"','"+j+"','"+name+"','"+mail+"','"+phno+"')");
      
              if(p>0)
              {    
                   response.sendRedirect("ViewFile1.jsp");
              }
              else
              {
                   response.sendRedirect("index.html");
              }
        }
   }  
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
%>   