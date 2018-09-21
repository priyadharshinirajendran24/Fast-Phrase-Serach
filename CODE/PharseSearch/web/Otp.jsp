<%-- 
    Document   : Otp
    Created on : Sep 1, 2018, 3:10:22 PM
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>Fast Phrase Search for Encrypted Cloud Storage</title>
        <style>
           
            .anker
            {
                font-family: 'Kaushan Script', cursive ;
                font-size: 20px;
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
                        &nbsp; <img  src="images/h1.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                        <a  style="color: white;" href="Home.jsp">Home</a><br>
                    </div>
                    
                    <div style="margin-top:50px;">
                        &nbsp; <img  src="images/sys1.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                        <a style="color: white;" href="DataOwnerLogin.jsp">Data Owner</a><br>
                    </div>
                    <div style="margin-top:50px;">
                       &nbsp; <img  src="images/user.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                       <a style="color: white;" href="DataUserLogin">Data User</a><br>
                    </div>
                    <div style="margin-top: 50px;" >
                        &nbsp; <img  src="images/cld.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                        <a style="color: white;" href="#">Cloud Storage</a><br>
                    </div>
                
                </div>
            </div>
            
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
            
             <div class="col-sm-8" style="background-color:whitesmoke;height: 900px;">
                
                 <h3 style="text-align: center;font-family: 'Kaushan Script', cursive;margin-top: 200px;">
                     OTP verification
                 </h3>
                  <form  action="OtpCheck.jsp" name="form"  method="post" >
                   
                       <table align="center" style="margin-top: 50px;">
                        
                        <tr>
                           
                                <td><label for="otp" > OTP:</label></td>
                            
                          </tr>    

                        
                        <tr>
                               
                            <td>
                                <input type="text" name="otp" placeholder="Enter Your OTP" required style="border-radius: 5pt 5pt;width: 300px; text-align: center;">
                            </td>
                           
                            </tr> 
                      
                       
          
                        <tr>
                               
                             <td>
                                 <input type="submit" name="submit" value="Submit"  style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 25px;width: 100px; text-align: center;">
                                 <input type="reset" name="reset" value="Reset"  style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 50px;width: 100px; text-align: center;">
                             </td>
                            
                        </tr>
                        
                    </table>
                  
                </form>
                
                 
            </div> 
            
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
        </div>
    </body>
</html>
