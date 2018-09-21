<%-- 
    Document   : Myfiles
    Created on : Sep 10, 2018, 1:12:49 PM
    Author     : Priya
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <title>Owner My Files</title>
        <style>
           
            .anker
            {
                font-family: 'Kaushan Script', cursive ;
                font-size: 15px;
                margin-top: 25px;
            }
            .responsive {
                width: 100%;
                height: auto;
            }
            #photo
{
    padding: 0px;
    vertical-align: middle;
    text-align: center;
    width: 100px;
    height: 100px;
}
th{
    color:#6600cc;
}
            </style>
    </head>
    <body>
        <div>
         <div class="col-sm-2" style="background-color:#333333;height: 900px;">
                <div style="margin-top: 50px;">
                    <img  src="images/fast2.jpg" alt="Not found"  class="responsive" >
                <br>
                </div>
             
             <div style="margin-top:50px;">
<!--                       <img  src="images/h1.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;-->
                <a  style="color: #ff0066;font-size: 20px;" href="#">Welcome &nbsp;

                            <%   
                        try
                        {

                          String display=session.getAttribute("ownername").toString();
                          out.println(display);

                        }
                        catch(Exception ex)
                        {
                            System.out.printf("Hai",ex.getMessage());

                        }
                        %>
                
                </a><br>
                    </div>
                <div class="anker">
                    <div style="margin-top:50px;">
                       <img  src="images/h1.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                        <a  style="color: white;" href="OwnerHome.jsp">DataOwner Home</a><br>
                    </div>
                    
                    <div style="margin-top:50px;">
                        <img  src="images/upload.png" alt="Not found" style="height:30px;width: 30px;margin: 0;" >&nbsp;&nbsp;
                        <a style="color: white;" href="Upload.jsp">Upload</a><br>
                    </div>
                    <div style="margin-top:50px;">
                        <img  src="images/file.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                       <a style="color: white;" href="Myfiles.jsp">My Files</a><br>
                    </div>
                    <div style="margin-top: 50px;" >
                        <img  src="images/approval.gif" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                        <a style="color: white;" href="Approval.jsp">Approval</a><br>
                    </div>
                    <div style="margin-top: 50px;" >
                        <img  src="images/shutdown.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                        <a style="color: white;" href="index.jsp">Logout</a><br>
                    </div>
                
                </div>
            </div>
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
            
             <div  align class="col-sm-8" style="background-color:whitesmoke;height: 900px;">
                
                 <h3 style="text-align: center;font-family: 'Kaushan Script', cursive;margin-top: 30px;">
                    Showing My Files
                 </h3>
                 
                 <br>
                 <br>
                 <div class="container-fluid">
                 <table  class="table table-bordered" >
                     
                     <tr>
                          <th>
                            ID
                         </th>
                         <th>
                            DO NAME
                         </th>
                          <th>
                            FILE NAME
                         </th>
                         
                          <th>
                             KEYWORDS
                         </th>
                         
                         <th>
                             DECRYPTION KEY
                         </th>
                          <th>
                             ACTION
                         </th>
                     </tr>
                     
                
                     <%
                         try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/phrase","root","root");
   Statement st=conn.createStatement();
   Statement at=conn.createStatement();
   ResultSet y,j;
   
   String display=session.getAttribute("ownername").toString();
       String query="select * from decryptfile where uname='"+display+"'";
       y=at.executeQuery(query);
       
  while(y.next())
       {
//          String a=y.getString("fname");
//          String b=y.getString("key1");
//          String c=y.getString("key2");
//          String d=y.getString("key3");
//          String e=y.getString("deckey");
           

          %>
      
                     
          <tr style="font-size: 12px;">
                           <td style="color: #00cc33;">
                             <%=y.getInt("id")%>
                         </td>
                            
                         <td style="color: #00cc33;">
                             <%=y.getString("uname")%>
                         </td>
                          
                         <td style="color: #00cc33;">
                             <%=y.getString("fname")%>
                         </td>
                         
                          <td style="color: #00cc33;">
                              KEYWORD 1: <%=y.getString("key1")%><br>
                              KEYWORD 2: <%=y.getString("key2")%><br>
                              KEYWORD 3:  <%=y.getString("key3")%>
                         </td>
                         
                         <td style="color: #00cc33;">
                              <%=y.getString("deckey")%>
                         </td>
                          <td style="color: #00cc33;">
                              <img  src="images/dlt.png" alt="Not found" style="height:20px;width: 20px;" >
                              <a href="DelConn.jsp?fid=<%=y.getInt("id")%>" style="text-decoration: none;color: #ff0000;">Delete</a>
                         </td>
                     </tr>
                      <%  }
          
   }
catch(Exception ex)
{
    System.out.printf("Hai",ex.getMessage());
}
                         
                         %>
                     
                 </table>
</div>
                  
                 
            </div> 
             
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
        </div>
    </body>
</html>
