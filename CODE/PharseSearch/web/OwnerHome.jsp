<%-- 
    Document   : OwnerHome
    Created on : Sep 3, 2018, 10:56:50 AM
    Author     : Priya
--%>


<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Owner Home</title>
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
                        <a style="color: white;" href="Home.jsp">Logout</a><br>
                    </div>
                
                </div>
            </div>
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
            
             <div class="col-sm-8" style="background-color:whitesmoke;height: 900px;">
                
                 <h3 style="text-align: center;font-family: 'Kaushan Script', cursive;margin-top: 30px;">
                     Cloud Owner Home
                 </h3>
                  
                 <img src="images/cloud1.jpg" alt="Not Found" class="responsive" style="margin-top: 20px;">
                 <p style="text-align: justify; margin-left: 50px;margin-right:50px;font-size: 17px;margin-top: 20px;font-family: 'Kaushan Script', cursive">
                     Cloud computing and storage provides users with capabilities to store and process their data in third-party
                     data centers. Organizations use the cloud in a variety of different service models (with acronyms such as
                     SaaS, PaaS, and IaaS) and deployment models (private, public, hybrid, and community). Security concerns
                     associated with cloud computing fall into two broad categories: security issues faced by cloud providers 
                     (organizations providing software-, platform-, or infrastructure-as-a-service via the cloud) and security 
                     issues faced by their customers (companies or organizations who host applications or store data on the cloud).
                     The responsibility is shared, however. The provider must ensure that their infrastructure is secure and 
                     that their clients’ data and applications are protected, while the user must take measures to fortify their 
                     application and use strong passwords and authentication measures. 
                 </p>
                 
            </div> 
             
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
        </div>
    </body>
</html>
