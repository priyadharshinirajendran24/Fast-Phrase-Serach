<%-- 
    Document   : GetFile
    Created on : Sep 14, 2018, 6:06:49 PM
    Author     : Priya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Search Page</title>
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
                        <a  style="color: white;" href="UserHome.jsp">Data User Home</a><br>
                    </div>
                    
                    <div style="margin-top:50px;">
                        <img  src="images/file.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                       <a style="color: white;" href="FileSearch.jsp">File  Search </a><br>
                    </div>
                    <div style="margin-top:50px;">
                        <img  src="images/upload.png" alt="Not found" style="height:30px;width: 30px;margin: 0;" >&nbsp;&nbsp;
                        <a style="color: white;" href="ReqFile.jsp">Requested Files</a><br>
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
                     <mark style="color: green;">
                         <h4>Download Page</h4>
                     </mark>
                     
                    <a href="Download.jsp">Download File</a>
                  
            </div> 
                
             
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
        </div>
    </body>
</html>
