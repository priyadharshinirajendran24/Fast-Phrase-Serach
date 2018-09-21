<%-- 
    Document   : Upload
    Created on : Sep 3, 2018, 2:58:07 PM
    Author     : Priya
--%>

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
            </style>
    </head>
    <body>
        <div>
            <div class="col-sm-2" style="background-color:#333333;height: 900px;">
                <div style="margin-top: 50px;">
                    <img  src="images/fast2.jpg" alt="Not found"  class="responsive" >
                <br>
                </div>
                <div class="anker">
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
                
                 <h3 style="text-align: center;font-family: 'Kaushan Script', cursive;margin-top: 150px;">
                     File Upload
                 </h3>
                 <center>
                <form  action="DesEncUpload.jsp" name="form1" onsubmit="return SignupValidate()" method="post" >
                   
                    <table cellpadding="5" >
                        
                        
                        
                          
                        <tr>
                           
                                <td><label for="fname" >File Name:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                               
                            <td>
                                <input type="text" name="fname" placeholder="Enter your File name" style="border-radius: 5pt 5pt;width: 300px; text-align: center;">
                            </td>
                            
                        </tr>
                        
                        
                        <tr >
                           
                                <td><label for="key1">Keyword 1:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td><input type="text" name="key1" placeholder="Please Enter Your  Keyword 1  " style="border-radius: 5pt 5pt;width: 300px; text-align: center;"></td>
                            
                        </tr>
                        
                        
                        
                        <tr>
                           
                                <td><label for="key2" >Keyword 2:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td><input type="text" name="key2" placeholder="Please Enter Your Keyword 2 "  required style="border-radius: 5pt 5pt;width: 300px; text-align: center;"></td>
                            
                        </tr>
                        <tr>
                           
                                <td><label for="key3">Keyword 3:</label></td>
                           
                        </tr>
                        
                        <tr>
                            
                           <td><input type="text" name="key3" placeholder="Please Enter Your Keyword 3"  required style="border-radius: 5pt 5pt;width: 300px; text-align: center;"></td>
                                                          
                        </tr>
                        
                         <tr>
                            
                               
                             <td>
                                 <input type="submit" name="submit" value="Submit" onclick="return SignupValidate()" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 25px;width: 100px; text-align: center;">
                                 <input type="reset" name="reset" value="Reset"  style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 50px;width: 100px; text-align: center;">
                             </td>
                            
                              
                             
                        </tr>
                         </table>
                         </form>
                     
                     
                     <form  action="FileUpload" name="form1" enctype="multipart/form-data"  method="post" >
                   
                    <table cellpadding="5" >
                        
                        
                        
                        <tr>
                           
                                <td><label for="file">Select your File:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td><input type="file" name="file" required   style="border-radius: 5pt 5pt;width: 300px; text-align: center;"></td>
                            
                        </tr>
                        
                        
                               
                             <td>
                                 <input type="submit" name="submit" value="Upload" onclick="return SignupValidate()" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 100px;width: 100px; text-align: center;">
                              
                             </td>
                            
                        
                    </table>
                   
                  
                     </form>

               
                 
                 </center>
            </div> 
             
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
        </div>
    </body>
</html>
