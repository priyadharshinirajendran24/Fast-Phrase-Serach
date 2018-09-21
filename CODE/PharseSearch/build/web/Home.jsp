<%-- 
    Document   : Home
    Created on : Aug 30, 2018, 4:13:26 PM
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
                       <a style="color: white;" href="DataUserLogin.jsp">Data User</a><br>
                    </div>
                    <div style="margin-top: 50px;" >
                        &nbsp; <img  src="images/cld.png" alt="Not found" style="height:30px;width: 30px;" >&nbsp;&nbsp;
                        <a style="color: white;" href="Cloud.jsp">Cloud Storage</a><br>
                    </div>
                
                </div>
            </div>
            
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
            
             <div class="col-sm-8" style="background-color:whitesmoke;height: 900px;">
                
                 <h3 style="text-align: center;font-family: 'Kaushan Script', cursive;">
                     FAST PHRASE SEARCH
                 </h3>
                 <h3 style="text-align: center;font-family: 'Kaushan Script', cursive;">
                  FOR ENCRYPTED CLOUD STORAGE
                 </h3>
                 
                 <p style="color: blue;text-align: center;font-family: 'Kaushan Script', cursive;font-size: 20px;">Abstract</p>
                 <p style="text-align: justify; margin-left:50px;margin-right:50px;font-size: 17px;font-family: 'Kaushan Script', cursive">
                     Cloud computing has generated much interest in the research community in recent years for its many advantages, but has
also raise security and privacy concerns. The storage and access of confidential documents have been identified as one of the central
problems in the area. In particular, many researchers investigated solutions to search over encrypted documents stored on remote
cloud servers. While many schemes have been proposed to perform conjunctive keyword search, less attention has been noted on
more specialized searching techniques. In this paper, we present a phrase search technique based on Bloom filters that is significantly
faster than existing solutions, with similar or better storage and communication cost. Our technique uses a series of n-gram filters to
support the functionality. The scheme exhibits a trade-off between storage and false positive rate, and is adaptable to defend against
inclusion-relation attacks. A design approach based on an application’s target false positive rate is also described.
                 </p>
                
                 <img  src="images/CloudSecurity.jpg" alt="Not found"  class="responsive" >
                 
            </div> 
            
             <div class="col-sm-1" style="background-color:skyblue;height: 900px;">
                
            </div>
        </div>
    </body>
</html>
