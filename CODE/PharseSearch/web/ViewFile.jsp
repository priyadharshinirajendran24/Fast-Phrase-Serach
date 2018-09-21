<%-- 
    Document   : ViewFile
    Created on : Sep 11, 2018, 4:09:44 PM
    Author     : Priya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>View Requested File </title>
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
 
  String display=session.getAttribute("username").toString();
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
                        <a  style="color: white;" href="UserHome.jsp">DataUser Home</a><br>
                    </div>
                    
                    <div style="margin-top:50px;">
                        <img  src="images/file.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                       <a style="color: white;" href="FileSearch.jsp">File  Search </a><br>
                    </div>
                    <div style="margin-top:50px;">
                        <img  src="images/upload.png" alt="Not found" style="height:30px;width: 30px;margin: 0;" >&nbsp;&nbsp;
                        <a style="color: white;" href="#.jsp">File Request</a><br>
                    </div>
                    
                    <div style="margin-top: 50px;" >
                        <img  src="images/shutdown.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                        <a style="color: white;" href="Home.jsp">Logout</a><br>
                    </div>
                
                </div>
            </div>
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
            
             <div class="col-sm-8" style="background-color:whitesmoke;height: 900px;">
                
                 <h3 style="text-align: left;font-family: 'Kaushan Script', cursive;margin-top:200px;margin-left: 190px;">
                    View Files
                 </h3>
                 <br>
                 
                     
                     <div class="container-fluid">
                 <table  class="table table-bordered" >
                     
                     <tr>
                        
                         <th>
                            DATA OWNER NAME 
                         </th>
                          <th>
                            FILE NAME
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
   ResultSet y;
    String m=session.getAttribute("searchw").toString();
  //String search1=request.getParameter("search");
 
    
       String query="select * from decryptfile where key1='"+m+"' OR key2='"+m+"' OR key3='"+m+"' "  ;
       y=at.executeQuery(query);
       
  while(y.next())
       {     
           String a=y.getString("uname");
           String b=y.getString("fname");
           session.setAttribute("aa",a);
           session.setAttribute("bb",b);

       %>
                    <tr style="font-size: 12px;">
                       
                        <td style="color: #00cc33;">
                             <%=y.getString("uname")
                          %>
                         </td>
                         
                         <td style="color: #00cc33;">
                             <%=y.getString("fname")
                          %>
                         </td>
                         
                          <td style="color: #00cc33;">
                              
                              <img  src="images/upload.png" alt="Not found" style="height:20px;width: 20px;" >
                              <a href="SendRequest.jsp" style="text-decoration: none;color: #ff0000;">Send Request</a>
                              
                         </td>
                      </tr>
<%
            }
     
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
