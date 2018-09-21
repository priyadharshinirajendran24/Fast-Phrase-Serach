<%-- 
    Document   : DataUserLogin
    Created on : Sep 11, 2018, 11:02:22 AM
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <title>Data User Login</title>
        <style>
                   
        
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 40%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #333333;
    color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #333333;
    color: white;
}

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
            <div class="col-sm-2" style="background-color:#333333;height: 650px;">
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
                        <a style="color: white;" href="DataOwnerHome.jsp">Data Owner</a><br>
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
            
             <div class="col-sm-1" style="background-color:skyblue;height: 650px;">
                
            </div>
            
             <div class="col-sm-8" style="background-color:whitesmoke;height: 650px;">
                
                 <h3 style="text-align: center;margin-top: 50px;font-family: 'Kaushan Script', cursive;">
                     DATA USER LOGIN
                 </h3>
                
                 <p style="text-align: justify; margin-left: 100px;margin-right:100px;font-size: 17px;font-family: 'Raleway', sans-serif;">
                   <form  action="UserLoginConn.jsp" name="form1" onsubmit="return SignupValidate()" method="post" >
                   
                       <table align="center" style="margin-top: 50px;">
                        
                        <tr>
                           
                                <td><label for="mail" >Email ID:</label></td>
                            
                          </tr>    

                        
                        <tr>
                               
                            <td>
                                <input type="text" name="mail" placeholder="Enter Your Email ID" required style="border-radius: 5pt 5pt;width: 300px; text-align: center;">
                            </td>
                           
                            </tr> 
                      
                        <tr >
                           
                                <td><label for="pass">Password:</label></td>
                                
                            
                        </tr>
                     
                        <tr>
                            
                               
                            <td><input type="password" name="pass" placeholder="Enter Your Password " required style="border-radius: 5pt 5pt;width: 300px; text-align: center;"></td>
                            
                        </tr>
          
                        <tr>
                               
                             <td>
                                 <input type="submit" name="submit" value="Submit" onclick="return SignupValidate()" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 25px;width: 100px; text-align: center;">
                                 <input type="reset" name="reset" value="Reset"  style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 50px;width: 100px; text-align: center;">
                             </td>
                            
                        </tr>
                        
                    </table>
                  
                </form>
                     </p> 
                     
                     
                          


<!-- Trigger/Open The Modal -->
<center>
    <button id="myBtn" style="border-radius: 5pt 5pt;margin-top: 10px;background-color: skyblue;color: white; width: 200px; text-align: center;">Click Here for New User</button>
</center>
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <center><h4>Data User Signup</h4></center>
    </div>
    <div class="modal-body">
        <center>
         <form action="DataUserReg" method="post" enctype="multipart/form-data">
                   
                    <table cellpadding="5" >
                        
                        <tr>
                           
                                <td><label for="uname" >Username:</label></td>
                            
                        </tr>
                        
                        <tr>
                               
                            <td>
                                <input type="text" name="uname" required placeholder="Enter Your User Name " style="border-radius: 5pt 5pt;width: 300px; text-align: center;">
                            </td>
                            
                        </tr>
                        
                        
                        <tr >
                           
                                <td><label for="pass">Password:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td><input type="password" name="pass" required placeholder="Enter Your Password " style="border-radius: 5pt 5pt;width: 300px; text-align: center;"></td>
                            
                        </tr>
                        
                         <tr>
                           
                                <td><label for="dob">Date Of Birth:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td>
                                
                              <input type="date" name="dob" required style="border-radius: 5pt 5pt;width: 300px; text-align: center;">
                                
                            </td>
                            
                        </tr>
                        
                        
                        <tr>
                           
                                <td><label for="addr">Address:</label></td>
                           
                        </tr>
                        
                        <tr>
                            
                               
                                <td>
                                    <textarea  name="addr" rows="3" cols="42" placeholder="Enter Your Address" required  style="border-radius: 5pt 5pt;">
                                        
                                    </textarea>
                                </td>
                            
                        </tr>
                        
                         
                        <tr>
                           
                                <td><label for="mail">Email Id:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td><input type="text" name="mail" required  placeholder="Enter Your Mail ID " style="border-radius: 5pt 5pt;width: 300px; text-align: center;"></td>
                            
                        </tr>
                        
                        
                        <tr>
                           
                                <td>
                                    <label for="cno">Contact Number:</label>
                                </td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                                <td>
                                    <input type="text" name="cno" required placeholder="Please Enter Your Contact Number" style="border-radius: 5pt 5pt;width: 300px; text-align: center;">
                                </td>
                            
                        </tr>
                        
                         <tr>
                           
                                <td><label for="dp" >Upload DP:</label></td>
                                
                            
                        </tr>
                        
                        <tr>
                            
                               
                            <td><input type="file" name="image" required="required"/></td>
                            
                        </tr>
                        
                       
                       
                         <tr>
                            
                               
                             <td>
                                 <input type="submit" name="submit" value="Submit"  style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 25px;width: 100px; text-align: center;">
                                 <input type="reset" name="reset" value="Reset"  style="border-radius: 5pt 5pt;margin-top: 10px;background-color: black;color: white; margin-left: 50px;width: 100px; text-align: center;">
                             </td>
                            
                              
                             
                        </tr>
                        
                      
                    </table>
                  
                </form>
            
            <script>
             
            function SignupValidate()
            {
               var name=document.form1.uname.value;
                var password=document.form1.pass.value;
                 var phno=document.form1.cno.value;
                   var address=document.form1.addr.value;
                    var answer=document.form1.ans.value;
          
                  
                if(name==null||name=="")
                {
                    alert("Name Can't be Blank");
                    document.form1.uname.focus();
                    return false;
                } else if(password.length<8)
                {
                    alert("Password should be atleast 8 characters Long");
                    document.form1.pass.focus();
                    return false;
                } 
                
                
            }
        </script>
            
            
        </center>
    </div>
    <div class="modal-footer">
      
      <a  href="#" style="border-radius: 5pt 5pt;margin-top: 5px;text-decoration: none;background-color: white;color: black; width: 200px; text-align: center;"> &nbsp; Back >> &nbsp;  </a>
    </div>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

                     
            </div> 
            
             <div class="col-sm-1" style="background-color:skyblue;height: 650px;">
                
            </div>
        </div>
    </body>
</html>
