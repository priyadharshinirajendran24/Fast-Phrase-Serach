<%-- 
    Document   : Image
    Created on : Sep 1, 2018, 10:42:04 AM
    Author     : Priya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Page</title>
    </head>
    <body>
     
        <b>Upload | <a href="view.jsp">View</a></b><br/><br/>
        
        <form action="UploadImage" method="post" enctype="multipart/form-data">
            <input type="file" name="image" required="required"/><br/><br/>
            <input type="submit"  value="submit" name="submit"/>
        </form>
   
    </body>
</html>
