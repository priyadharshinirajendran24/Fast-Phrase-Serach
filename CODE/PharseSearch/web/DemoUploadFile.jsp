<%-- 
    Document   : DemoUploadFile
    Created on : Sep 15, 2018, 5:58:52 PM
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>upload Page</title>
    </head>
    <body>
      <div>
            <h3> Choose File to Upload in Server </h3>
            <form action="FileUpload" method="post" enctype="multipart/form-data">
                <input type="file" name="file" />
                <input type="submit" value="upload" />
            </form>          
        </div>
      
    </body>
</html>
